/**
 * The Yakumo PC Project, 2022 
 *
 * NyaSama Pocket Personal Computer South Bridge
 *
 * Module: CPU Clock Divider
 **/
module ClockDiv(
	nRST, CLK,
	DIV, OUT
);

	input nRST, CLK;
	input[4:0] DIV;
	output reg OUT;
	
	reg[4:0] CNT;
	always @(negedge nRST or posedge CLK) begin
		if (!nRST) begin
			CNT <= DIV;
			OUT <= 1'b0;
		end else begin
			if (CNT != 0)
				CNT <= CNT - 1;
			else begin
				CNT <= DIV;
				OUT <= !OUT;
			end
		end
	end

endmodule
