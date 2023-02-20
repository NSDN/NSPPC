/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer South Bridge
 *
 * Module: Beeper Controller
 **/
module BeepBeep(
	nRST, CLK, CTL,
	OUTL, OUTR
);

	input nRST, CLK;
	input[7:0] CTL;
	output OUTL, OUTR;
	
	reg CLK_DIV_2;
	always @(posedge CLK) begin
		CLK_DIV_2 <= !CLK_DIV_2;
	end
	
	wire VAL;
	assign VAL = CTL[7:1];
	
	reg[7:0] CNT;
	assign OUTL = CNT <= VAL;
	assign OUTR = CNT >= VAL;
	
	always @(posedge CLK_DIV_2) begin
		if (!nRST)
			CNT <= CTL;
		else begin
			if (CNT != 8'b0)
				CNT <= CNT - 8'b1;
			else
				CNT <= CTL;
		end
	end

endmodule
