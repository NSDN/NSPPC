/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer South Bridge
 * 
 * Top Module
 **/
module PPCSB(
	CLK, DBG,
	CKO,
	ADDR, DATA, RD, WR,
	IORQ, MREQ, BUSREQ, BUSACK, INT, WAIT,
	LCD_CS, LCD_RST, LCD_RD, LCD_WR, LCD_A0, LCD_DATA, LCD_BLK,
	KEY_C, KEY_R, BEEP_L, BEEP_R,
	SDET, STDBY, CHRG,
	LED
);

	input CLK, DBG;
	output CKO;
	
	input[7:0] ADDR;
	inout[7:0] DATA;
	reg[7:0] DATA_BUF;
	input RD, WR;
	
	input IORQ, MREQ, BUSACK;
	output BUSREQ, INT, WAIT;
	
	output LCD_CS, LCD_RD, LCD_WR, LCD_A0, LCD_BLK;
	output reg LCD_RST;
	inout[7:0] LCD_DATA;
	reg[7:0] LCD_DATA_BUF;
	
	output[14:0] KEY_C;
	input[4:0] KEY_R;
	output BEEP_L, BEEP_R;
	
	input SDET, STDBY, CHRG;
	output[1:0] LED;
	reg[1:0] LED_REG;
	
	assign LED = LED_REG;
	
	assign BUSREQ = 1'b1;
	assign INT = 1'b1;
	assign WAIT = 1'b1;
	
	wire nCS;
	assign nCS = IORQ || ADDR[7:4] == 0;
	
	wire iRD, iWR;
	assign iRD = RD || nCS;
	assign iWR = WR || nCS;
	
	wire RST, nRST;
	assign RST = !DBG; // (!nCS && !WR && ADDR == 8'hAA && DATA == 8'h55)
	assign nRST = !RST;
	
	reg SAFE_REG;
	
	reg[4:0] DIV_REG;
	ClockDiv clk_div(nRST, CLK, DIV_REG, CKO);
	
	wire CLK_25K;
	wire[19:0] KEY_DATA;
	KeyScan ki_san(nRST, CLK, CLK_25K, KEY_C, KEY_R, KEY_DATA);
	
	reg[7:0] BEEP_REG;
	BeepBeep beep_beep(nRST, CLK_25K, BEEP_REG, BEEP_L, BEEP_R);
	
	assign DATA = (nCS || RD) ? 8'bz : DATA_BUF;
	
	always @(posedge RST or negedge iRD) begin
		if (RST) begin
			DATA_BUF <= 8'hFF;
		end else begin
			case (ADDR)
				8'h10: DATA_BUF <= { LCD_RST, 5'b0, LED_REG };
				
				8'h11: DATA_BUF <= KEY_DATA[7:0];
				8'h12: DATA_BUF <= KEY_DATA[15:8];
				8'h13: DATA_BUF <= { SDET, STDBY, CHRG, 1'b0, KEY_DATA[19:16] };
				8'h14: DATA_BUF <= BEEP_REG;
				
				//8'h21: DATA_BUF <= LCD_DATA;
				
				8'hFE: DATA_BUF <= { 3'b0, DIV_REG };
				default: DATA_BUF <= 8'hFF;
			endcase
		end
	end

	always @(posedge RST or negedge iWR) begin
		if (RST) begin
			LCD_DATA_BUF <= 8'hFF;
			
			SAFE_REG <= 1'b0;
			
			BEEP_REG <= 8'b0;
			DIV_REG <= 5'b11111;
			
			LED_REG <= 2'b11;
			LCD_RST <= 1'b1;
		end else begin
			case (ADDR)
				8'h10: begin
					LCD_RST <= DATA[7];
					LED_REG <= DATA[1:0];
				end
				
				8'h14: BEEP_REG <= DATA;
				
				8'h20: LCD_DATA_BUF <= DATA;
				8'h21: LCD_DATA_BUF <= DATA;
				
				8'hAA: SAFE_REG <= DATA == 8'h55;
				8'hFE: begin
					if (SAFE_REG) begin
						DIV_REG <= DATA[4:0];
						SAFE_REG <= 1'b0;
					end	
				end
			endcase
		end
	end
	
	assign LCD_CS = nCS || ADDR[7:1] != 7'h10;
	assign LCD_RD = RD;
	assign LCD_WR = WR;
	assign LCD_A0 = ADDR[0];
	assign LCD_DATA = (LCD_CS || LCD_WR) ? 8'bz : LCD_DATA_BUF;
	assign LCD_BLK = 1'b1;
	
endmodule
