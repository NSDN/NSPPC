/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer South Bridge
 *
 * Module: Key Scanner
 **/
module KeyScan(
	nRST, CLK, CLK_OUT,
	COL, ROW,
	DATA
);

	input nRST, CLK;
	output CLK_OUT;
	output reg[14:0] COL;
	input[4:0] ROW;
	output reg[19:0] DATA;
	
	reg[6:0] CLK_DIV_CNT;
	reg[3:0] COL_POS;
	integer i;
	
	always @(negedge nRST or posedge CLK) begin
		if (!nRST) begin
			COL <= 15'h7FFF;
			CLK_DIV_CNT <= 7'b0;
			COL_POS <= 4'b0;
		end else begin
			CLK_DIV_CNT <= CLK_DIV_CNT + 7'b1;
			if (CLK_DIV_CNT == 7'b0) begin
				if (COL_POS == 4'hF) begin
					COL_POS <= 4'b0;
				end else begin
					COL <= ~(15'h4000 >> COL_POS);
					COL_POS <= COL_POS + 4'b1;
				end
			end else if (CLK_DIV_CNT == 7'h7F) begin
				for (i = 0; i < 5; i = i + 1) begin
					DATA[i * 4 +: 4] <= ROW[i] ? 4'b0 : (COL_POS + 4'b1);
				end
			end
		end
	end
	
	assign CLK_OUT = COL_POS == 4'b0;

endmodule
