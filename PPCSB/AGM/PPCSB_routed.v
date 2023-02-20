`timescale 1 ps/ 1 ps

module PPCSB(
	CLK,
	DBG,
	CKO,
	ADDR,
	DATA,
	RD,
	WR,
	IORQ,
	MREQ,
	BUSREQ,
	BUSACK,
	INT,
	WAIT,
	LCD_CS,
	LCD_RST,
	LCD_RD,
	LCD_WR,
	LCD_A0,
	LCD_DATA,
	LCD_BLK,
	KEY_C,
	KEY_R,
	BEEP_L,
	BEEP_R,
	SDET,
	STDBY,
	CHRG,
	LED);
input	CLK;
input	DBG;
output	CKO;
input	[7:0] ADDR;
inout	[7:0] DATA;
input	RD;
input	WR;
input	IORQ;
input	MREQ;
output	BUSREQ;
input	BUSACK;
output	INT;
output	WAIT;
output	LCD_CS;
output	LCD_RST;
output	LCD_RD;
output	LCD_WR;
output	LCD_A0;
inout	[7:0] LCD_DATA;
output	LCD_BLK;
output	[14:0] KEY_C;
input	[4:0] KEY_R;
output	BEEP_L;
output	BEEP_R;
input	SDET;
input	STDBY;
input	CHRG;
output	[1:0] LED;

//wire	gnd;
//wire	vcc;
wire	\ADDR[0]~input_o ;
wire	\ADDR[1]~input_o ;
wire	\ADDR[2]~input_o ;
wire	\ADDR[3]~input_o ;
wire	\ADDR[4]~input_o ;
wire	\ADDR[5]~input_o ;
wire	\ADDR[6]~input_o ;
wire	\ADDR[7]~input_o ;
wire	AsyncReset_X1_Y30_GND;
wire	AsyncReset_X2_Y27_GND;
wire	AsyncReset_X3_Y27_GND;
wire	AsyncReset_X3_Y28_GND;
wire	AsyncReset_X4_Y28_GND;
wire	AsyncReset_X5_Y27_GND;
wire	AsyncReset_X5_Y28_GND;
wire	[7:0] BEEP_REG;
//wire	BEEP_REG[0];
wire	\BEEP_REG[0]~feeder_combout ;
//wire	BEEP_REG[1];
wire	\BEEP_REG[1]~feeder_combout ;
//wire	BEEP_REG[2];
wire	\BEEP_REG[2]~feeder_combout ;
//wire	BEEP_REG[3];
//wire	BEEP_REG[4];
wire	\BEEP_REG[4]~feeder_combout ;
//wire	BEEP_REG[5];
wire	\BEEP_REG[5]~feeder_combout ;
//wire	BEEP_REG[6];
wire	\BEEP_REG[6]~feeder_combout ;
//wire	BEEP_REG[7];
wire	\BEEP_REG[7]~feeder_combout ;
wire	\BUSACK~input_o ;
wire	\CHRG~input_o ;
wire	\CLK~input_o ;
wire	\CLK~inputclkctrl_outclk ;
wire	\CLK~inputclkctrl_outclk_X1_Y24_SIG_VCC ;
wire	\CLK~inputclkctrl_outclk_X2_Y24_SIG_VCC ;
wire	\CLK~inputclkctrl_outclk_X4_Y27_SIG_VCC ;
wire	\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ;
wire	\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X2_Y27_SIG_SIG ;
wire	\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X3_Y28_SIG_SIG ;
wire	\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X4_Y28_SIG_SIG ;
wire	\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X5_Y27_SIG_SIG ;
wire	\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X5_Y28_SIG_SIG ;
wire	\CLK~inputclkctrl_outclk__ki_san|Equal0~4_combout_X3_Y27_SIG_SIG ;
wire	\CLK~inputclkctrl_outclk__ki_san|Equal0~4_combout_X4_Y27_SIG_SIG ;
wire	\DATA[0]~input_o ;
wire	\DATA[1]~input_o ;
wire	\DATA[2]~input_o ;
wire	\DATA[3]~input_o ;
wire	\DATA[4]~input_o ;
wire	\DATA[5]~input_o ;
wire	\DATA[6]~input_o ;
wire	\DATA[7]~input_o ;
wire	[7:0] DATA_BUF;
//wire	DATA_BUF[0];
//wire	DATA_BUF[1];
//wire	DATA_BUF[2];
//wire	DATA_BUF[3];
wire	\DATA_BUF[3]~1_combout ;
wire	\DATA_BUF[3]~2_combout ;
wire	\DATA_BUF[3]~3_combout ;
//wire	DATA_BUF[4];
//wire	DATA_BUF[5];
//wire	DATA_BUF[6];
wire	\DATA_BUF[6]~0_combout ;
//wire	DATA_BUF[7];
wire	\DBG~input_o ;
wire	\DBG~inputclkctrl_outclk ;
wire	\DBG~inputclkctrl_outclk__AsyncReset_X1_Y24_INV ;
wire	\DBG~inputclkctrl_outclk__AsyncReset_X1_Y28_INV ;
wire	\DBG~inputclkctrl_outclk__AsyncReset_X1_Y30_INV ;
wire	\DBG~inputclkctrl_outclk__AsyncReset_X2_Y24_INV ;
wire	\DBG~inputclkctrl_outclk__AsyncReset_X2_Y28_INV ;
wire	\DBG~inputclkctrl_outclk__AsyncReset_X2_Y30_INV ;
wire	\DBG~inputclkctrl_outclk__AsyncReset_X3_Y27_INV ;
wire	\DBG~inputclkctrl_outclk__AsyncReset_X3_Y28_INV ;
wire	\DBG~inputclkctrl_outclk__AsyncReset_X4_Y27_INV ;
wire	\DBG~inputclkctrl_outclk__AsyncReset_X4_Y28_INV ;
wire	\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ;
wire	\DBG~inputclkctrl_outclk__AsyncReset_X5_Y28_INV ;
wire	[4:0] DIV_REG;
//wire	DIV_REG[0];
wire	\DIV_REG[0]~3_combout ;
//wire	DIV_REG[1];
wire	\DIV_REG[1]~7_combout ;
//wire	DIV_REG[2];
wire	\DIV_REG[2]~6_combout ;
//wire	DIV_REG[3];
wire	\DIV_REG[3]~5_combout ;
//wire	DIV_REG[4];
wire	\DIV_REG[4]~0_combout ;
wire	\DIV_REG[4]~1_combout ;
wire	\DIV_REG[4]~2_combout ;
wire	\DIV_REG[4]~4_combout ;
wire	\Decoder0~0_combout ;
wire	\Decoder0~1_combout ;
wire	\Decoder0~2_combout ;
wire	\Decoder0~3_combout ;
wire	\Equal0~0_combout ;
wire	\IORQ~input_o ;
wire	\KEY_R[0]~input_o ;
wire	\KEY_R[1]~input_o ;
wire	\KEY_R[2]~input_o ;
wire	\KEY_R[3]~input_o ;
wire	\KEY_R[4]~input_o ;
wire	\LCD_CS~0_combout ;
wire	\LCD_DATA[0]~input_o ;
wire	\LCD_DATA[1]~input_o ;
wire	\LCD_DATA[2]~input_o ;
wire	\LCD_DATA[3]~input_o ;
wire	\LCD_DATA[4]~input_o ;
wire	\LCD_DATA[5]~input_o ;
wire	\LCD_DATA[6]~input_o ;
wire	\LCD_DATA[7]~input_o ;
wire	[7:0] LCD_DATA_BUF;
//wire	LCD_DATA_BUF[0];
wire	\LCD_DATA_BUF[0]~3_combout ;
//wire	LCD_DATA_BUF[1];
wire	\LCD_DATA_BUF[1]~4_combout ;
//wire	LCD_DATA_BUF[2];
wire	\LCD_DATA_BUF[2]~5_combout ;
//wire	LCD_DATA_BUF[3];
wire	\LCD_DATA_BUF[3]~6_combout ;
//wire	LCD_DATA_BUF[4];
wire	\LCD_DATA_BUF[4]~7_combout ;
//wire	LCD_DATA_BUF[5];
wire	\LCD_DATA_BUF[5]~8_combout ;
//wire	LCD_DATA_BUF[6];
wire	\LCD_DATA_BUF[6]~9_combout ;
//wire	LCD_DATA_BUF[7];
wire	\LCD_DATA_BUF[7]~10_combout ;
wire	\LCD_DATA_BUF~0_combout ;
wire	\LCD_DATA_BUF~1_combout ;
wire	\LCD_DATA_BUF~2_combout ;
wire	\LCD_DATA~16_combout ;
wire	\LCD_RST~0_combout ;
wire	\LCD_RST~reg0_q ;
wire	[1:0] LED_REG;
//wire	LED_REG[0];
wire	\LED_REG[0]~0_combout ;
//wire	LED_REG[1];
wire	\LED_REG[1]~1_combout ;
wire	\MREQ~input_o ;
wire	\RD~input_o ;
wire	\SAFE_REG~0_combout ;
wire	\SAFE_REG~1_combout ;
wire	\SAFE_REG~2_combout ;
wire	\SAFE_REG~3_combout ;
wire	\SAFE_REG~4_combout ;
wire	\SAFE_REG~q ;
wire	\SDET~input_o ;
wire	\STDBY~input_o ;
wire	\Selector0~0_combout ;
wire	\Selector0~1_combout ;
wire	\Selector0~2_combout ;
wire	\Selector0~3_combout ;
wire	\Selector0~4_combout ;
wire	\Selector0~5_combout ;
wire	\Selector1~0_combout ;
wire	\Selector1~1_combout ;
wire	\Selector1~2_combout ;
wire	\Selector1~3_combout ;
wire	\Selector2~0_combout ;
wire	\Selector2~1_combout ;
wire	\Selector2~2_combout ;
wire	\Selector2~3_combout ;
wire	\Selector2~4_combout ;
wire	\Selector3~0_combout ;
wire	\Selector3~1_combout ;
wire	\Selector3~2_combout ;
wire	\Selector3~3_combout ;
wire	\Selector3~4_combout ;
wire	\Selector3~5_combout ;
wire	\Selector4~0_combout ;
wire	\Selector4~1_combout ;
wire	\Selector4~2_combout ;
wire	\Selector4~3_combout ;
wire	\Selector5~0_combout ;
wire	\Selector5~1_combout ;
wire	\Selector5~2_combout ;
wire	\Selector5~3_combout ;
wire	\Selector6~0_combout ;
wire	\Selector6~1_combout ;
wire	\Selector6~2_combout ;
wire	\Selector6~3_combout ;
wire	\Selector6~4_combout ;
wire	\Selector7~0_combout ;
wire	\Selector7~1_combout ;
wire	\Selector7~2_combout ;
wire	\Selector7~3_combout ;
wire	\Selector7~4_combout ;
wire	\Selector7~5_combout ;
wire	SyncLoad_X2_Y30_VCC;
wire	SyncLoad_X3_Y28_VCC;
wire	SyncLoad_X4_Y27_VCC;
wire	SyncLoad_X4_Y28_VCC;
wire	SyncLoad_X5_Y27_VCC;
wire	SyncLoad_X5_Y28_VCC;
wire	SyncReset_X1_Y30_GND;
wire	SyncReset_X2_Y30_GND;
wire	SyncReset_X3_Y28_GND;
wire	SyncReset_X4_Y27_GND;
wire	SyncReset_X4_Y28_GND;
wire	SyncReset_X5_Y27_GND;
wire	SyncReset_X5_Y28_GND;
wire	\WR~input_o ;
wire	\beep_beep|CLK_DIV_2~0_combout ;
wire	\beep_beep|CLK_DIV_2~clkctrl_outclk ;
wire	\beep_beep|CLK_DIV_2~clkctrl_outclk_X1_Y30_SIG_VCC ;
wire	\beep_beep|CLK_DIV_2~q ;
wire	[7:0] \beep_beep|CNT ;
//wire	\beep_beep|CNT [0];
wire	\beep_beep|CNT[0]~8_combout ;
wire	\beep_beep|CNT[0]~9 ;
//wire	\beep_beep|CNT [1];
wire	\beep_beep|CNT[1]~11_combout ;
wire	\beep_beep|CNT[1]~12 ;
//wire	\beep_beep|CNT [2];
wire	\beep_beep|CNT[2]~13_combout ;
wire	\beep_beep|CNT[2]~14 ;
//wire	\beep_beep|CNT [3];
wire	\beep_beep|CNT[3]~15_combout ;
wire	\beep_beep|CNT[3]~16 ;
//wire	\beep_beep|CNT [4];
wire	\beep_beep|CNT[4]~17_combout ;
wire	\beep_beep|CNT[4]~18 ;
//wire	\beep_beep|CNT [5];
wire	\beep_beep|CNT[5]~19_combout ;
wire	\beep_beep|CNT[5]~20 ;
//wire	\beep_beep|CNT [6];
wire	\beep_beep|CNT[6]~21_combout ;
wire	\beep_beep|CNT[6]~22 ;
//wire	\beep_beep|CNT [7];
wire	\beep_beep|CNT[7]~23_combout ;
wire	\beep_beep|CNT~10_combout ;
wire	\beep_beep|CNT~10_combout__SyncLoad_X1_Y30_SIG ;
wire	\beep_beep|Equal0~0_combout ;
wire	\beep_beep|Equal0~1_combout ;
wire	\beep_beep|LessThan0~0_combout ;
wire	\beep_beep|LessThan1~0_combout ;
wire	\clk_div|Add0~0_combout ;
wire	\clk_div|Add0~1 ;
wire	\clk_div|Add0~2_combout ;
wire	\clk_div|Add0~3 ;
wire	\clk_div|Add0~4_combout ;
wire	\clk_div|Add0~5 ;
wire	\clk_div|Add0~6_combout ;
wire	\clk_div|Add0~7 ;
wire	\clk_div|Add0~8_combout ;
wire	\clk_div|CNT[0]~17_combout ;
wire	\clk_div|CNT[0]~18_combout ;
wire	\clk_div|CNT[0]~19_combout ;
wire	\clk_div|CNT[0]~_emulated_q ;
wire	\clk_div|CNT[1]~13_combout ;
wire	\clk_div|CNT[1]~14_combout ;
wire	\clk_div|CNT[1]~15_combout ;
wire	\clk_div|CNT[1]~_emulated_q ;
wire	\clk_div|CNT[2]~10_combout ;
wire	\clk_div|CNT[2]~11_combout ;
wire	\clk_div|CNT[2]~9_combout ;
wire	\clk_div|CNT[2]~_emulated_q ;
wire	\clk_div|CNT[3]~5_combout ;
wire	\clk_div|CNT[3]~6_combout ;
wire	\clk_div|CNT[3]~7_combout ;
wire	\clk_div|CNT[3]~_emulated_q ;
wire	\clk_div|CNT[4]~1_combout ;
wire	\clk_div|CNT[4]~2_combout ;
wire	\clk_div|CNT[4]~3_combout ;
wire	\clk_div|CNT[4]~_emulated_q ;
wire	\clk_div|Equal0~0_combout ;
wire	\clk_div|Equal0~1_combout ;
wire	\clk_div|OUT~0_combout ;
wire	\clk_div|OUT~q ;
tri1	devclrn;
tri1	devoe;
tri1	devpor;
wire	\iRD~combout ;
wire	\iRD~combout_X2_Y28_SIG_VCC ;
wire	\iRD~combout_X3_Y28_SIG_VCC ;
wire	\iRD~combout_X4_Y28_SIG_VCC ;
wire	\iWR~clkctrl_outclk ;
wire	\iWR~clkctrl_outclk_X1_Y28_SIG_VCC ;
wire	\iWR~clkctrl_outclk__DIV_REG[4]~1_combout_X1_Y24_SIG_SIG ;
wire	\iWR~clkctrl_outclk__DIV_REG[4]~1_combout_X2_Y24_SIG_SIG ;
wire	\iWR~clkctrl_outclk__Decoder0~1_combout_X5_Y28_SIG_SIG ;
wire	\iWR~clkctrl_outclk__Decoder0~2_combout_X1_Y30_SIG_SIG ;
wire	\iWR~clkctrl_outclk__Decoder0~2_combout_X2_Y30_SIG_SIG ;
wire	\iWR~clkctrl_outclk__LCD_DATA_BUF~2_combout_X2_Y30_SIG_SIG ;
wire	\iWR~combout ;
wire	\ki_san|Add1~0_combout ;
wire	\ki_san|Add1~1_combout ;
wire	\ki_san|Add1~2_combout ;
wire	[6:0] \ki_san|CLK_DIV_CNT ;
//wire	\ki_san|CLK_DIV_CNT [0];
wire	\ki_san|CLK_DIV_CNT[0]~18_combout ;
//wire	\ki_san|CLK_DIV_CNT [1];
wire	\ki_san|CLK_DIV_CNT[1]~6_combout ;
wire	\ki_san|CLK_DIV_CNT[1]~7 ;
//wire	\ki_san|CLK_DIV_CNT [2];
wire	\ki_san|CLK_DIV_CNT[2]~8_combout ;
wire	\ki_san|CLK_DIV_CNT[2]~9 ;
//wire	\ki_san|CLK_DIV_CNT [3];
wire	\ki_san|CLK_DIV_CNT[3]~10_combout ;
wire	\ki_san|CLK_DIV_CNT[3]~11 ;
//wire	\ki_san|CLK_DIV_CNT [4];
wire	\ki_san|CLK_DIV_CNT[4]~12_combout ;
wire	\ki_san|CLK_DIV_CNT[4]~13 ;
//wire	\ki_san|CLK_DIV_CNT [5];
wire	\ki_san|CLK_DIV_CNT[5]~14_combout ;
wire	\ki_san|CLK_DIV_CNT[5]~15 ;
//wire	\ki_san|CLK_DIV_CNT [6];
wire	\ki_san|CLK_DIV_CNT[6]~16_combout ;
wire	[14:0] \ki_san|COL ;
//wire	\ki_san|COL [0];
wire	\ki_san|COL[0]~0_combout ;
wire	\ki_san|COL[0]~1_combout ;
//wire	\ki_san|COL [10];
//wire	\ki_san|COL [11];
//wire	\ki_san|COL [12];
//wire	\ki_san|COL [13];
//wire	\ki_san|COL [14];
//wire	\ki_san|COL [1];
//wire	\ki_san|COL [2];
//wire	\ki_san|COL [3];
//wire	\ki_san|COL [4];
//wire	\ki_san|COL [5];
//wire	\ki_san|COL [6];
//wire	\ki_san|COL [7];
//wire	\ki_san|COL [8];
//wire	\ki_san|COL [9];
wire	[3:0] \ki_san|COL_POS ;
//wire	\ki_san|COL_POS [0];
wire	\ki_san|COL_POS[0]~0_combout ;
//wire	\ki_san|COL_POS [1];
//wire	\ki_san|COL_POS [2];
//wire	\ki_san|COL_POS [3];
wire	[19:0] \ki_san|DATA ;
//wire	\ki_san|DATA [0];
wire	\ki_san|DATA[0]~1_combout ;
wire	\ki_san|DATA[0]~2_combout ;
wire	\ki_san|DATA[0]~3_combout ;
//wire	\ki_san|DATA [10];
//wire	\ki_san|DATA [11];
//wire	\ki_san|DATA [12];
//wire	\ki_san|DATA [13];
//wire	\ki_san|DATA [14];
//wire	\ki_san|DATA [15];
//wire	\ki_san|DATA [16];
//wire	\ki_san|DATA [17];
//wire	\ki_san|DATA [18];
//wire	\ki_san|DATA [19];
//wire	\ki_san|DATA [1];
//wire	\ki_san|DATA [2];
//wire	\ki_san|DATA [3];
//wire	\ki_san|DATA [4];
//wire	\ki_san|DATA [5];
//wire	\ki_san|DATA [6];
//wire	\ki_san|DATA [7];
//wire	\ki_san|DATA [8];
//wire	\ki_san|DATA [9];
wire	\ki_san|DATA~0_combout ;
wire	\ki_san|DATA~10_combout ;
wire	\ki_san|DATA~11_combout ;
wire	\ki_san|DATA~12_combout ;
wire	\ki_san|DATA~13_combout ;
wire	\ki_san|DATA~14_combout ;
wire	\ki_san|DATA~15_combout ;
wire	\ki_san|DATA~16_combout ;
wire	\ki_san|DATA~17_combout ;
wire	\ki_san|DATA~18_combout ;
wire	\ki_san|DATA~19_combout ;
wire	\ki_san|DATA~20_combout ;
wire	\ki_san|DATA~21_combout ;
wire	\ki_san|DATA~22_combout ;
wire	\ki_san|DATA~4_combout ;
wire	\ki_san|DATA~5_combout ;
wire	\ki_san|DATA~6_combout ;
wire	\ki_san|DATA~7_combout ;
wire	\ki_san|DATA~8_combout ;
wire	\ki_san|DATA~9_combout ;
wire	\ki_san|Equal0~2_combout ;
wire	\ki_san|Equal0~3_combout ;
wire	\ki_san|Equal0~4_combout ;
wire	\ki_san|Equal3~combout ;
wire	\ki_san|Equal3~combout_X3_Y27_SIG_VCC ;
wire	\ki_san|ShiftRight0~0_combout ;
wire	\ki_san|ShiftRight0~10_combout ;
wire	\ki_san|ShiftRight0~11_combout ;
wire	\ki_san|ShiftRight0~12_combout ;
wire	\ki_san|ShiftRight0~13_combout ;
wire	\ki_san|ShiftRight0~1_combout ;
wire	\ki_san|ShiftRight0~2_combout ;
wire	\ki_san|ShiftRight0~3_combout ;
wire	\ki_san|ShiftRight0~4_combout ;
wire	\ki_san|ShiftRight0~5_combout ;
wire	\ki_san|ShiftRight0~6_combout ;
wire	\ki_san|ShiftRight0~7_combout ;
wire	\ki_san|ShiftRight0~8_combout ;
wire	\ki_san|ShiftRight0~9_combout ;
wire	unknown;
wire	\~ALTERA_ASDO_DATA1~~ibuf_o ;
wire	\~ALTERA_ASDO_DATA1~~padout ;
wire	\~ALTERA_DATA0~~ibuf_o ;
wire	\~ALTERA_DATA0~~padout ;
wire	\~ALTERA_FLASH_nCE_nCSO~~ibuf_o ;
wire	\~ALTERA_FLASH_nCE_nCSO~~padout ;

wire vcc;
wire gnd;
assign vcc = 1'b1;
assign gnd = 1'b0;

alta_io \ADDR[0]~input (
	.datain(gnd),
	.oe(gnd),
	.padio(ADDR[0]),
	.combout(\ADDR[0]~input_o ));
defparam \ADDR[0]~input .coord_x = 1;
defparam \ADDR[0]~input .coord_y = 1;
defparam \ADDR[0]~input .coord_z = 1;
defparam \ADDR[0]~input .PRG_DELAYB = 1'b1;
defparam \ADDR[0]~input .RX_SEL = 1'b0;
defparam \ADDR[0]~input .PDCNTL = 2'b11;
defparam \ADDR[0]~input .NDCNTL = 2'b11;
defparam \ADDR[0]~input .PRG_SLR = 1'b0;
defparam \ADDR[0]~input .CFG_KEEP = 2'b00;
defparam \ADDR[0]~input .PU = 4'b0000;

alta_io \ADDR[1]~input (
	.datain(gnd),
	.oe(gnd),
	.padio(ADDR[1]),
	.combout(\ADDR[1]~input_o ));
defparam \ADDR[1]~input .coord_x = 1;
defparam \ADDR[1]~input .coord_y = 1;
defparam \ADDR[1]~input .coord_z = 0;
defparam \ADDR[1]~input .PRG_DELAYB = 1'b1;
defparam \ADDR[1]~input .RX_SEL = 1'b0;
defparam \ADDR[1]~input .PDCNTL = 2'b11;
defparam \ADDR[1]~input .NDCNTL = 2'b11;
defparam \ADDR[1]~input .PRG_SLR = 1'b0;
defparam \ADDR[1]~input .CFG_KEEP = 2'b00;
defparam \ADDR[1]~input .PU = 4'b0000;

alta_io \ADDR[2]~input (
	.datain(gnd),
	.oe(gnd),
	.padio(ADDR[2]),
	.combout(\ADDR[2]~input_o ));
defparam \ADDR[2]~input .coord_x = 0;
defparam \ADDR[2]~input .coord_y = 2;
defparam \ADDR[2]~input .coord_z = 6;
defparam \ADDR[2]~input .PRG_DELAYB = 1'b1;
defparam \ADDR[2]~input .RX_SEL = 1'b0;
defparam \ADDR[2]~input .PDCNTL = 2'b11;
defparam \ADDR[2]~input .NDCNTL = 2'b11;
defparam \ADDR[2]~input .PRG_SLR = 1'b0;
defparam \ADDR[2]~input .CFG_KEEP = 2'b00;
defparam \ADDR[2]~input .PU = 4'b0000;

alta_io \ADDR[3]~input (
	.datain(gnd),
	.oe(gnd),
	.padio(ADDR[3]),
	.combout(\ADDR[3]~input_o ));
defparam \ADDR[3]~input .coord_x = 0;
defparam \ADDR[3]~input .coord_y = 2;
defparam \ADDR[3]~input .coord_z = 5;
defparam \ADDR[3]~input .PRG_DELAYB = 1'b1;
defparam \ADDR[3]~input .RX_SEL = 1'b0;
defparam \ADDR[3]~input .PDCNTL = 2'b11;
defparam \ADDR[3]~input .NDCNTL = 2'b11;
defparam \ADDR[3]~input .PRG_SLR = 1'b0;
defparam \ADDR[3]~input .CFG_KEEP = 2'b00;
defparam \ADDR[3]~input .PU = 4'b0000;

alta_io \ADDR[4]~input (
	.datain(gnd),
	.oe(gnd),
	.padio(ADDR[4]),
	.combout(\ADDR[4]~input_o ));
defparam \ADDR[4]~input .coord_x = 0;
defparam \ADDR[4]~input .coord_y = 2;
defparam \ADDR[4]~input .coord_z = 4;
defparam \ADDR[4]~input .PRG_DELAYB = 1'b1;
defparam \ADDR[4]~input .RX_SEL = 1'b0;
defparam \ADDR[4]~input .PDCNTL = 2'b11;
defparam \ADDR[4]~input .NDCNTL = 2'b11;
defparam \ADDR[4]~input .PRG_SLR = 1'b0;
defparam \ADDR[4]~input .CFG_KEEP = 2'b00;
defparam \ADDR[4]~input .PU = 4'b0000;

alta_io \ADDR[5]~input (
	.datain(gnd),
	.oe(gnd),
	.padio(ADDR[5]),
	.combout(\ADDR[5]~input_o ));
defparam \ADDR[5]~input .coord_x = 0;
defparam \ADDR[5]~input .coord_y = 2;
defparam \ADDR[5]~input .coord_z = 3;
defparam \ADDR[5]~input .PRG_DELAYB = 1'b1;
defparam \ADDR[5]~input .RX_SEL = 1'b0;
defparam \ADDR[5]~input .PDCNTL = 2'b11;
defparam \ADDR[5]~input .NDCNTL = 2'b11;
defparam \ADDR[5]~input .PRG_SLR = 1'b0;
defparam \ADDR[5]~input .CFG_KEEP = 2'b00;
defparam \ADDR[5]~input .PU = 4'b0000;

alta_io \ADDR[6]~input (
	.datain(gnd),
	.oe(gnd),
	.padio(ADDR[6]),
	.combout(\ADDR[6]~input_o ));
defparam \ADDR[6]~input .coord_x = 0;
defparam \ADDR[6]~input .coord_y = 2;
defparam \ADDR[6]~input .coord_z = 2;
defparam \ADDR[6]~input .PRG_DELAYB = 1'b1;
defparam \ADDR[6]~input .RX_SEL = 1'b0;
defparam \ADDR[6]~input .PDCNTL = 2'b11;
defparam \ADDR[6]~input .NDCNTL = 2'b11;
defparam \ADDR[6]~input .PRG_SLR = 1'b0;
defparam \ADDR[6]~input .CFG_KEEP = 2'b00;
defparam \ADDR[6]~input .PU = 4'b0000;

alta_io \ADDR[7]~input (
	.datain(gnd),
	.oe(gnd),
	.padio(ADDR[7]),
	.combout(\ADDR[7]~input_o ));
defparam \ADDR[7]~input .coord_x = 0;
defparam \ADDR[7]~input .coord_y = 2;
defparam \ADDR[7]~input .coord_z = 1;
defparam \ADDR[7]~input .PRG_DELAYB = 1'b1;
defparam \ADDR[7]~input .RX_SEL = 1'b0;
defparam \ADDR[7]~input .PDCNTL = 2'b11;
defparam \ADDR[7]~input .NDCNTL = 2'b11;
defparam \ADDR[7]~input .PRG_SLR = 1'b0;
defparam \ADDR[7]~input .CFG_KEEP = 2'b00;
defparam \ADDR[7]~input .PU = 4'b0000;

alta_io \BEEP_L~output (
	.datain(!\beep_beep|LessThan0~0_combout ),
	.oe(vcc),
	.padio(BEEP_L),
	.combout());
defparam \BEEP_L~output .coord_x = 7;
defparam \BEEP_L~output .coord_y = 3;
defparam \BEEP_L~output .coord_z = 0;
defparam \BEEP_L~output .PRG_DELAYB = 1'b1;
defparam \BEEP_L~output .RX_SEL = 1'b0;
defparam \BEEP_L~output .PDCNTL = 2'b11;
defparam \BEEP_L~output .NDCNTL = 2'b11;
defparam \BEEP_L~output .PRG_SLR = 1'b0;
defparam \BEEP_L~output .CFG_KEEP = 2'b00;
defparam \BEEP_L~output .PU = 4'b0000;

alta_slice \BEEP_REG[0] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[0]~input_o ),
	.Cin(),
	.Qin(BEEP_REG[0]),
	.Clk(\iWR~clkctrl_outclk__Decoder0~2_combout_X1_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X1_Y30_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\BEEP_REG[0]~feeder_combout ),
	.Cout(),
	.Q(BEEP_REG[0]));
defparam \BEEP_REG[0] .coord_x = 5;
defparam \BEEP_REG[0] .coord_y = 3;
defparam \BEEP_REG[0] .coord_z = 13;
defparam \BEEP_REG[0] .mask = 16'hFF00;
defparam \BEEP_REG[0] .modeMux = 1'b0;
defparam \BEEP_REG[0] .FeedbackMux = 1'b0;
defparam \BEEP_REG[0] .ShiftMux = 1'b0;
defparam \BEEP_REG[0] .BypassEn = 1'b0;
defparam \BEEP_REG[0] .CarryEnb = 1'b1;

alta_slice \BEEP_REG[1] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[1]~input_o ),
	.Cin(),
	.Qin(BEEP_REG[1]),
	.Clk(\iWR~clkctrl_outclk__Decoder0~2_combout_X1_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X1_Y30_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\BEEP_REG[1]~feeder_combout ),
	.Cout(),
	.Q(BEEP_REG[1]));
defparam \BEEP_REG[1] .coord_x = 5;
defparam \BEEP_REG[1] .coord_y = 3;
defparam \BEEP_REG[1] .coord_z = 15;
defparam \BEEP_REG[1] .mask = 16'hFF00;
defparam \BEEP_REG[1] .modeMux = 1'b0;
defparam \BEEP_REG[1] .FeedbackMux = 1'b0;
defparam \BEEP_REG[1] .ShiftMux = 1'b0;
defparam \BEEP_REG[1] .BypassEn = 1'b0;
defparam \BEEP_REG[1] .CarryEnb = 1'b1;

alta_slice \BEEP_REG[2] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[2]~input_o ),
	.Cin(),
	.Qin(BEEP_REG[2]),
	.Clk(\iWR~clkctrl_outclk__Decoder0~2_combout_X1_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X1_Y30_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\BEEP_REG[2]~feeder_combout ),
	.Cout(),
	.Q(BEEP_REG[2]));
defparam \BEEP_REG[2] .coord_x = 5;
defparam \BEEP_REG[2] .coord_y = 3;
defparam \BEEP_REG[2] .coord_z = 2;
defparam \BEEP_REG[2] .mask = 16'hFF00;
defparam \BEEP_REG[2] .modeMux = 1'b0;
defparam \BEEP_REG[2] .FeedbackMux = 1'b0;
defparam \BEEP_REG[2] .ShiftMux = 1'b0;
defparam \BEEP_REG[2] .BypassEn = 1'b0;
defparam \BEEP_REG[2] .CarryEnb = 1'b1;

alta_slice \BEEP_REG[3] (
	.A(),
	.B(),
	.C(\DATA[3]~input_o ),
	.D(),
	.Cin(),
	.Qin(BEEP_REG[3]),
	.Clk(\iWR~clkctrl_outclk__Decoder0~2_combout_X2_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y30_INV ),
	.SyncReset(SyncReset_X2_Y30_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y30_VCC),
	.LutOut(),
	.Cout(),
	.Q(BEEP_REG[3]));
defparam \BEEP_REG[3] .coord_x = 4;
defparam \BEEP_REG[3] .coord_y = 3;
defparam \BEEP_REG[3] .coord_z = 9;
defparam \BEEP_REG[3] .mask = 16'hFFFF;
defparam \BEEP_REG[3] .modeMux = 1'b1;
defparam \BEEP_REG[3] .FeedbackMux = 1'b0;
defparam \BEEP_REG[3] .ShiftMux = 1'b0;
defparam \BEEP_REG[3] .BypassEn = 1'b1;
defparam \BEEP_REG[3] .CarryEnb = 1'b1;

alta_slice \BEEP_REG[4] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[4]~input_o ),
	.Cin(),
	.Qin(BEEP_REG[4]),
	.Clk(\iWR~clkctrl_outclk__Decoder0~2_combout_X1_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X1_Y30_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\BEEP_REG[4]~feeder_combout ),
	.Cout(),
	.Q(BEEP_REG[4]));
defparam \BEEP_REG[4] .coord_x = 5;
defparam \BEEP_REG[4] .coord_y = 3;
defparam \BEEP_REG[4] .coord_z = 12;
defparam \BEEP_REG[4] .mask = 16'hFF00;
defparam \BEEP_REG[4] .modeMux = 1'b0;
defparam \BEEP_REG[4] .FeedbackMux = 1'b0;
defparam \BEEP_REG[4] .ShiftMux = 1'b0;
defparam \BEEP_REG[4] .BypassEn = 1'b0;
defparam \BEEP_REG[4] .CarryEnb = 1'b1;

alta_slice \BEEP_REG[5] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[5]~input_o ),
	.Cin(),
	.Qin(BEEP_REG[5]),
	.Clk(\iWR~clkctrl_outclk__Decoder0~2_combout_X2_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y30_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\BEEP_REG[5]~feeder_combout ),
	.Cout(),
	.Q(BEEP_REG[5]));
defparam \BEEP_REG[5] .coord_x = 4;
defparam \BEEP_REG[5] .coord_y = 3;
defparam \BEEP_REG[5] .coord_z = 12;
defparam \BEEP_REG[5] .mask = 16'hFF00;
defparam \BEEP_REG[5] .modeMux = 1'b0;
defparam \BEEP_REG[5] .FeedbackMux = 1'b0;
defparam \BEEP_REG[5] .ShiftMux = 1'b0;
defparam \BEEP_REG[5] .BypassEn = 1'b0;
defparam \BEEP_REG[5] .CarryEnb = 1'b1;

alta_slice \BEEP_REG[6] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[6]~input_o ),
	.Cin(),
	.Qin(BEEP_REG[6]),
	.Clk(\iWR~clkctrl_outclk__Decoder0~2_combout_X2_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y30_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\BEEP_REG[6]~feeder_combout ),
	.Cout(),
	.Q(BEEP_REG[6]));
defparam \BEEP_REG[6] .coord_x = 4;
defparam \BEEP_REG[6] .coord_y = 3;
defparam \BEEP_REG[6] .coord_z = 0;
defparam \BEEP_REG[6] .mask = 16'hFF00;
defparam \BEEP_REG[6] .modeMux = 1'b0;
defparam \BEEP_REG[6] .FeedbackMux = 1'b0;
defparam \BEEP_REG[6] .ShiftMux = 1'b0;
defparam \BEEP_REG[6] .BypassEn = 1'b0;
defparam \BEEP_REG[6] .CarryEnb = 1'b1;

alta_slice \BEEP_REG[7] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[7]~input_o ),
	.Cin(),
	.Qin(BEEP_REG[7]),
	.Clk(\iWR~clkctrl_outclk__Decoder0~2_combout_X1_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X1_Y30_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\BEEP_REG[7]~feeder_combout ),
	.Cout(),
	.Q(BEEP_REG[7]));
defparam \BEEP_REG[7] .coord_x = 5;
defparam \BEEP_REG[7] .coord_y = 3;
defparam \BEEP_REG[7] .coord_z = 3;
defparam \BEEP_REG[7] .mask = 16'hFF00;
defparam \BEEP_REG[7] .modeMux = 1'b0;
defparam \BEEP_REG[7] .FeedbackMux = 1'b0;
defparam \BEEP_REG[7] .ShiftMux = 1'b0;
defparam \BEEP_REG[7] .BypassEn = 1'b0;
defparam \BEEP_REG[7] .CarryEnb = 1'b1;

alta_io \BEEP_R~output (
	.datain(!\beep_beep|LessThan1~0_combout ),
	.oe(vcc),
	.padio(BEEP_R),
	.combout());
defparam \BEEP_R~output .coord_x = 7;
defparam \BEEP_R~output .coord_y = 3;
defparam \BEEP_R~output .coord_z = 2;
defparam \BEEP_R~output .PRG_DELAYB = 1'b1;
defparam \BEEP_R~output .RX_SEL = 1'b0;
defparam \BEEP_R~output .PDCNTL = 2'b11;
defparam \BEEP_R~output .NDCNTL = 2'b11;
defparam \BEEP_R~output .PRG_SLR = 1'b0;
defparam \BEEP_R~output .CFG_KEEP = 2'b00;
defparam \BEEP_R~output .PU = 4'b0000;

alta_io \BUSACK~input (
	.datain(gnd),
	.oe(gnd),
	.padio(BUSACK),
	.combout(\BUSACK~input_o ));
defparam \BUSACK~input .coord_x = 3;
defparam \BUSACK~input .coord_y = 4;
defparam \BUSACK~input .coord_z = 1;
defparam \BUSACK~input .PRG_DELAYB = 1'b1;
defparam \BUSACK~input .RX_SEL = 1'b0;
defparam \BUSACK~input .PDCNTL = 2'b11;
defparam \BUSACK~input .NDCNTL = 2'b11;
defparam \BUSACK~input .PRG_SLR = 1'b0;
defparam \BUSACK~input .CFG_KEEP = 2'b00;
defparam \BUSACK~input .PU = 4'b0000;

alta_io \BUSREQ~output (
	.datain(vcc),
	.oe(vcc),
	.padio(BUSREQ),
	.combout());
defparam \BUSREQ~output .coord_x = 3;
defparam \BUSREQ~output .coord_y = 4;
defparam \BUSREQ~output .coord_z = 0;
defparam \BUSREQ~output .PRG_DELAYB = 1'b1;
defparam \BUSREQ~output .RX_SEL = 1'b0;
defparam \BUSREQ~output .PDCNTL = 2'b11;
defparam \BUSREQ~output .NDCNTL = 2'b11;
defparam \BUSREQ~output .PRG_SLR = 1'b0;
defparam \BUSREQ~output .CFG_KEEP = 2'b00;
defparam \BUSREQ~output .PU = 4'b0000;

alta_io \CHRG~input (
	.datain(gnd),
	.oe(gnd),
	.padio(CHRG),
	.combout(\CHRG~input_o ));
defparam \CHRG~input .coord_x = 7;
defparam \CHRG~input .coord_y = 1;
defparam \CHRG~input .coord_z = 5;
defparam \CHRG~input .PRG_DELAYB = 1'b1;
defparam \CHRG~input .RX_SEL = 1'b0;
defparam \CHRG~input .PDCNTL = 2'b11;
defparam \CHRG~input .NDCNTL = 2'b11;
defparam \CHRG~input .PRG_SLR = 1'b0;
defparam \CHRG~input .CFG_KEEP = 2'b00;
defparam \CHRG~input .PU = 4'b0000;

alta_io \CKO~output (
	.datain(\clk_div|OUT~q ),
	.oe(vcc),
	.padio(CKO),
	.combout());
defparam \CKO~output .coord_x = 7;
defparam \CKO~output .coord_y = 3;
defparam \CKO~output .coord_z = 4;
defparam \CKO~output .PRG_DELAYB = 1'b1;
defparam \CKO~output .RX_SEL = 1'b0;
defparam \CKO~output .PDCNTL = 2'b11;
defparam \CKO~output .NDCNTL = 2'b11;
defparam \CKO~output .PRG_SLR = 1'b0;
defparam \CKO~output .CFG_KEEP = 2'b00;
defparam \CKO~output .PU = 4'b0000;

alta_io \CLK~input (
	.datain(gnd),
	.oe(gnd),
	.padio(CLK),
	.combout(\CLK~input_o ));
defparam \CLK~input .coord_x = 0;
defparam \CLK~input .coord_y = 2;
defparam \CLK~input .coord_z = 0;
defparam \CLK~input .PRG_DELAYB = 1'b1;
defparam \CLK~input .RX_SEL = 1'b0;
defparam \CLK~input .PDCNTL = 2'b11;
defparam \CLK~input .NDCNTL = 2'b11;
defparam \CLK~input .PRG_SLR = 1'b0;
defparam \CLK~input .CFG_KEEP = 2'b00;
defparam \CLK~input .PU = 4'b0000;

alta_io_gclk \CLK~inputclkctrl (
	.inclk(\CLK~input_o ),
	.outclk(\CLK~inputclkctrl_outclk ));
defparam \CLK~inputclkctrl .coord_x = 0;
defparam \CLK~inputclkctrl .coord_y = 2;
defparam \CLK~inputclkctrl .coord_z = 0;

alta_io \DATA[0]~output (
	.datain(!DATA_BUF[0]),
	.oe(\iRD~combout ),
	.padio(DATA[0]),
	.combout(\DATA[0]~input_o ));
defparam \DATA[0]~output .coord_x = 0;
defparam \DATA[0]~output .coord_y = 3;
defparam \DATA[0]~output .coord_z = 6;
defparam \DATA[0]~output .PRG_DELAYB = 1'b1;
defparam \DATA[0]~output .RX_SEL = 1'b0;
defparam \DATA[0]~output .PDCNTL = 2'b11;
defparam \DATA[0]~output .NDCNTL = 2'b11;
defparam \DATA[0]~output .PRG_SLR = 1'b0;
defparam \DATA[0]~output .CFG_KEEP = 2'b00;
defparam \DATA[0]~output .PU = 4'b0000;

alta_io \DATA[1]~output (
	.datain(!DATA_BUF[1]),
	.oe(\iRD~combout ),
	.padio(DATA[1]),
	.combout(\DATA[1]~input_o ));
defparam \DATA[1]~output .coord_x = 0;
defparam \DATA[1]~output .coord_y = 3;
defparam \DATA[1]~output .coord_z = 5;
defparam \DATA[1]~output .PRG_DELAYB = 1'b1;
defparam \DATA[1]~output .RX_SEL = 1'b0;
defparam \DATA[1]~output .PDCNTL = 2'b11;
defparam \DATA[1]~output .NDCNTL = 2'b11;
defparam \DATA[1]~output .PRG_SLR = 1'b0;
defparam \DATA[1]~output .CFG_KEEP = 2'b00;
defparam \DATA[1]~output .PU = 4'b0000;

alta_io \DATA[2]~output (
	.datain(!DATA_BUF[2]),
	.oe(\iRD~combout ),
	.padio(DATA[2]),
	.combout(\DATA[2]~input_o ));
defparam \DATA[2]~output .coord_x = 0;
defparam \DATA[2]~output .coord_y = 3;
defparam \DATA[2]~output .coord_z = 4;
defparam \DATA[2]~output .PRG_DELAYB = 1'b1;
defparam \DATA[2]~output .RX_SEL = 1'b0;
defparam \DATA[2]~output .PDCNTL = 2'b11;
defparam \DATA[2]~output .NDCNTL = 2'b11;
defparam \DATA[2]~output .PRG_SLR = 1'b0;
defparam \DATA[2]~output .CFG_KEEP = 2'b00;
defparam \DATA[2]~output .PU = 4'b0000;

alta_io \DATA[3]~output (
	.datain(!DATA_BUF[3]),
	.oe(\iRD~combout ),
	.padio(DATA[3]),
	.combout(\DATA[3]~input_o ));
defparam \DATA[3]~output .coord_x = 0;
defparam \DATA[3]~output .coord_y = 3;
defparam \DATA[3]~output .coord_z = 2;
defparam \DATA[3]~output .PRG_DELAYB = 1'b1;
defparam \DATA[3]~output .RX_SEL = 1'b0;
defparam \DATA[3]~output .PDCNTL = 2'b11;
defparam \DATA[3]~output .NDCNTL = 2'b11;
defparam \DATA[3]~output .PRG_SLR = 1'b0;
defparam \DATA[3]~output .CFG_KEEP = 2'b00;
defparam \DATA[3]~output .PU = 4'b0000;

alta_io \DATA[4]~output (
	.datain(!DATA_BUF[4]),
	.oe(\iRD~combout ),
	.padio(DATA[4]),
	.combout(\DATA[4]~input_o ));
defparam \DATA[4]~output .coord_x = 0;
defparam \DATA[4]~output .coord_y = 3;
defparam \DATA[4]~output .coord_z = 1;
defparam \DATA[4]~output .PRG_DELAYB = 1'b1;
defparam \DATA[4]~output .RX_SEL = 1'b0;
defparam \DATA[4]~output .PDCNTL = 2'b11;
defparam \DATA[4]~output .NDCNTL = 2'b11;
defparam \DATA[4]~output .PRG_SLR = 1'b0;
defparam \DATA[4]~output .CFG_KEEP = 2'b00;
defparam \DATA[4]~output .PU = 4'b0000;

alta_io \DATA[5]~output (
	.datain(!DATA_BUF[5]),
	.oe(\iRD~combout ),
	.padio(DATA[5]),
	.combout(\DATA[5]~input_o ));
defparam \DATA[5]~output .coord_x = 0;
defparam \DATA[5]~output .coord_y = 3;
defparam \DATA[5]~output .coord_z = 0;
defparam \DATA[5]~output .PRG_DELAYB = 1'b1;
defparam \DATA[5]~output .RX_SEL = 1'b0;
defparam \DATA[5]~output .PDCNTL = 2'b11;
defparam \DATA[5]~output .NDCNTL = 2'b11;
defparam \DATA[5]~output .PRG_SLR = 1'b0;
defparam \DATA[5]~output .CFG_KEEP = 2'b00;
defparam \DATA[5]~output .PU = 4'b0000;

alta_io \DATA[6]~output (
	.datain(!DATA_BUF[6]),
	.oe(\iRD~combout ),
	.padio(DATA[6]),
	.combout(\DATA[6]~input_o ));
defparam \DATA[6]~output .coord_x = 1;
defparam \DATA[6]~output .coord_y = 4;
defparam \DATA[6]~output .coord_z = 0;
defparam \DATA[6]~output .PRG_DELAYB = 1'b1;
defparam \DATA[6]~output .RX_SEL = 1'b0;
defparam \DATA[6]~output .PDCNTL = 2'b11;
defparam \DATA[6]~output .NDCNTL = 2'b11;
defparam \DATA[6]~output .PRG_SLR = 1'b0;
defparam \DATA[6]~output .CFG_KEEP = 2'b00;
defparam \DATA[6]~output .PU = 4'b0000;

alta_io \DATA[7]~output (
	.datain(!DATA_BUF[7]),
	.oe(\iRD~combout ),
	.padio(DATA[7]),
	.combout(\DATA[7]~input_o ));
defparam \DATA[7]~output .coord_x = 1;
defparam \DATA[7]~output .coord_y = 4;
defparam \DATA[7]~output .coord_z = 1;
defparam \DATA[7]~output .PRG_DELAYB = 1'b1;
defparam \DATA[7]~output .RX_SEL = 1'b0;
defparam \DATA[7]~output .PDCNTL = 2'b11;
defparam \DATA[7]~output .NDCNTL = 2'b11;
defparam \DATA[7]~output .PRG_SLR = 1'b0;
defparam \DATA[7]~output .CFG_KEEP = 2'b00;
defparam \DATA[7]~output .PU = 4'b0000;

alta_slice \DATA_BUF[0] (
	.A(\Selector7~0_combout ),
	.B(\Selector7~3_combout ),
	.C(\Selector7~4_combout ),
	.D(\DIV_REG[4]~2_combout ),
	.Cin(),
	.Qin(DATA_BUF[0]),
	.Clk(\iRD~combout_X2_Y28_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y28_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector7~5_combout ),
	.Cout(),
	.Q(DATA_BUF[0]));
defparam \DATA_BUF[0] .coord_x = 2;
defparam \DATA_BUF[0] .coord_y = 2;
defparam \DATA_BUF[0] .coord_z = 15;
defparam \DATA_BUF[0] .mask = 16'h1110;
defparam \DATA_BUF[0] .modeMux = 1'b0;
defparam \DATA_BUF[0] .FeedbackMux = 1'b0;
defparam \DATA_BUF[0] .ShiftMux = 1'b0;
defparam \DATA_BUF[0] .BypassEn = 1'b0;
defparam \DATA_BUF[0] .CarryEnb = 1'b1;

alta_slice \DATA_BUF[1] (
	.A(\Selector6~0_combout ),
	.B(\Selector6~3_combout ),
	.C(\Selector7~4_combout ),
	.D(\DIV_REG[4]~2_combout ),
	.Cin(),
	.Qin(DATA_BUF[1]),
	.Clk(\iRD~combout_X2_Y28_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y28_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector6~4_combout ),
	.Cout(),
	.Q(DATA_BUF[1]));
defparam \DATA_BUF[1] .coord_x = 2;
defparam \DATA_BUF[1] .coord_y = 2;
defparam \DATA_BUF[1] .coord_z = 9;
defparam \DATA_BUF[1] .mask = 16'h1110;
defparam \DATA_BUF[1] .modeMux = 1'b0;
defparam \DATA_BUF[1] .FeedbackMux = 1'b0;
defparam \DATA_BUF[1] .ShiftMux = 1'b0;
defparam \DATA_BUF[1] .BypassEn = 1'b0;
defparam \DATA_BUF[1] .CarryEnb = 1'b1;

alta_slice \DATA_BUF[2] (
	.A(DIV_REG[2]),
	.B(\ADDR[7]~input_o ),
	.C(\Selector2~0_combout ),
	.D(\Selector5~2_combout ),
	.Cin(),
	.Qin(DATA_BUF[2]),
	.Clk(\iRD~combout_X3_Y28_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X3_Y28_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector5~3_combout ),
	.Cout(),
	.Q(DATA_BUF[2]));
defparam \DATA_BUF[2] .coord_x = 3;
defparam \DATA_BUF[2] .coord_y = 2;
defparam \DATA_BUF[2] .coord_z = 13;
defparam \DATA_BUF[2] .mask = 16'h080B;
defparam \DATA_BUF[2] .modeMux = 1'b0;
defparam \DATA_BUF[2] .FeedbackMux = 1'b0;
defparam \DATA_BUF[2] .ShiftMux = 1'b0;
defparam \DATA_BUF[2] .BypassEn = 1'b0;
defparam \DATA_BUF[2] .CarryEnb = 1'b1;

alta_slice \DATA_BUF[3] (
	.A(\Selector4~2_combout ),
	.B(\ADDR[7]~input_o ),
	.C(DIV_REG[3]),
	.D(\Selector2~0_combout ),
	.Cin(),
	.Qin(DATA_BUF[3]),
	.Clk(\iRD~combout_X3_Y28_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X3_Y28_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector4~3_combout ),
	.Cout(),
	.Q(DATA_BUF[3]));
defparam \DATA_BUF[3] .coord_x = 3;
defparam \DATA_BUF[3] .coord_y = 2;
defparam \DATA_BUF[3] .coord_z = 15;
defparam \DATA_BUF[3] .mask = 16'h00D1;
defparam \DATA_BUF[3] .modeMux = 1'b0;
defparam \DATA_BUF[3] .FeedbackMux = 1'b0;
defparam \DATA_BUF[3] .ShiftMux = 1'b0;
defparam \DATA_BUF[3] .BypassEn = 1'b0;
defparam \DATA_BUF[3] .CarryEnb = 1'b1;

alta_slice \DATA_BUF[3]~1 (
	.A(\ADDR[1]~input_o ),
	.B(\ADDR[2]~input_o ),
	.C(vcc),
	.D(\ADDR[4]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DATA_BUF[3]~1_combout ),
	.Cout(),
	.Q());
defparam \DATA_BUF[3]~1 .coord_x = 2;
defparam \DATA_BUF[3]~1 .coord_y = 2;
defparam \DATA_BUF[3]~1 .coord_z = 7;
defparam \DATA_BUF[3]~1 .mask = 16'h2200;
defparam \DATA_BUF[3]~1 .modeMux = 1'b0;
defparam \DATA_BUF[3]~1 .FeedbackMux = 1'b0;
defparam \DATA_BUF[3]~1 .ShiftMux = 1'b0;
defparam \DATA_BUF[3]~1 .BypassEn = 1'b0;
defparam \DATA_BUF[3]~1 .CarryEnb = 1'b1;

alta_slice \DATA_BUF[3]~2 (
	.A(\ADDR[1]~input_o ),
	.B(\ADDR[2]~input_o ),
	.C(\ADDR[0]~input_o ),
	.D(\ADDR[4]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DATA_BUF[3]~2_combout ),
	.Cout(),
	.Q());
defparam \DATA_BUF[3]~2 .coord_x = 3;
defparam \DATA_BUF[3]~2 .coord_y = 2;
defparam \DATA_BUF[3]~2 .coord_z = 2;
defparam \DATA_BUF[3]~2 .mask = 16'hECCC;
defparam \DATA_BUF[3]~2 .modeMux = 1'b0;
defparam \DATA_BUF[3]~2 .FeedbackMux = 1'b0;
defparam \DATA_BUF[3]~2 .ShiftMux = 1'b0;
defparam \DATA_BUF[3]~2 .BypassEn = 1'b0;
defparam \DATA_BUF[3]~2 .CarryEnb = 1'b1;

alta_slice \DATA_BUF[3]~3 (
	.A(\ADDR[1]~input_o ),
	.B(\ADDR[2]~input_o ),
	.C(\ADDR[0]~input_o ),
	.D(\ADDR[4]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DATA_BUF[3]~3_combout ),
	.Cout(),
	.Q());
defparam \DATA_BUF[3]~3 .coord_x = 3;
defparam \DATA_BUF[3]~3 .coord_y = 2;
defparam \DATA_BUF[3]~3 .coord_z = 9;
defparam \DATA_BUF[3]~3 .mask = 16'h1533;
defparam \DATA_BUF[3]~3 .modeMux = 1'b0;
defparam \DATA_BUF[3]~3 .FeedbackMux = 1'b0;
defparam \DATA_BUF[3]~3 .ShiftMux = 1'b0;
defparam \DATA_BUF[3]~3 .BypassEn = 1'b0;
defparam \DATA_BUF[3]~3 .CarryEnb = 1'b1;

alta_slice \DATA_BUF[4] (
	.A(\Selector3~1_combout ),
	.B(\ADDR[6]~input_o ),
	.C(\ADDR[4]~input_o ),
	.D(\Selector3~5_combout ),
	.Cin(),
	.Qin(DATA_BUF[4]),
	.Clk(\iRD~combout_X4_Y28_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X4_Y28_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector3~3_combout ),
	.Cout(),
	.Q(DATA_BUF[4]));
defparam \DATA_BUF[4] .coord_x = 4;
defparam \DATA_BUF[4] .coord_y = 2;
defparam \DATA_BUF[4] .coord_z = 2;
defparam \DATA_BUF[4] .mask = 16'h4070;
defparam \DATA_BUF[4] .modeMux = 1'b0;
defparam \DATA_BUF[4] .FeedbackMux = 1'b0;
defparam \DATA_BUF[4] .ShiftMux = 1'b0;
defparam \DATA_BUF[4] .BypassEn = 1'b0;
defparam \DATA_BUF[4] .CarryEnb = 1'b1;

alta_slice \DATA_BUF[5] (
	.A(\Selector2~3_combout ),
	.B(vcc),
	.C(\DATA_BUF[6]~0_combout ),
	.D(\DIV_REG[4]~2_combout ),
	.Cin(),
	.Qin(DATA_BUF[5]),
	.Clk(\iRD~combout_X3_Y28_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X3_Y28_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector2~4_combout ),
	.Cout(),
	.Q(DATA_BUF[5]));
defparam \DATA_BUF[5] .coord_x = 3;
defparam \DATA_BUF[5] .coord_y = 2;
defparam \DATA_BUF[5] .coord_z = 8;
defparam \DATA_BUF[5] .mask = 16'h5F50;
defparam \DATA_BUF[5] .modeMux = 1'b0;
defparam \DATA_BUF[5] .FeedbackMux = 1'b0;
defparam \DATA_BUF[5] .ShiftMux = 1'b0;
defparam \DATA_BUF[5] .BypassEn = 1'b0;
defparam \DATA_BUF[5] .CarryEnb = 1'b1;

alta_slice \DATA_BUF[6] (
	.A(\Selector1~2_combout ),
	.B(\DIV_REG[4]~2_combout ),
	.C(vcc),
	.D(\DATA_BUF[6]~0_combout ),
	.Cin(),
	.Qin(DATA_BUF[6]),
	.Clk(\iRD~combout_X2_Y28_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y28_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector1~3_combout ),
	.Cout(),
	.Q(DATA_BUF[6]));
defparam \DATA_BUF[6] .coord_x = 2;
defparam \DATA_BUF[6] .coord_y = 2;
defparam \DATA_BUF[6] .coord_z = 11;
defparam \DATA_BUF[6] .mask = 16'h55CC;
defparam \DATA_BUF[6] .modeMux = 1'b0;
defparam \DATA_BUF[6] .FeedbackMux = 1'b0;
defparam \DATA_BUF[6] .ShiftMux = 1'b0;
defparam \DATA_BUF[6] .BypassEn = 1'b0;
defparam \DATA_BUF[6] .CarryEnb = 1'b1;

alta_slice \DATA_BUF[6]~0 (
	.A(\ADDR[5]~input_o ),
	.B(\ADDR[3]~input_o ),
	.C(\ADDR[7]~input_o ),
	.D(\ADDR[6]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DATA_BUF[6]~0_combout ),
	.Cout(),
	.Q());
defparam \DATA_BUF[6]~0 .coord_x = 1;
defparam \DATA_BUF[6]~0 .coord_y = 2;
defparam \DATA_BUF[6]~0 .coord_z = 5;
defparam \DATA_BUF[6]~0 .mask = 16'h0001;
defparam \DATA_BUF[6]~0 .modeMux = 1'b0;
defparam \DATA_BUF[6]~0 .FeedbackMux = 1'b0;
defparam \DATA_BUF[6]~0 .ShiftMux = 1'b0;
defparam \DATA_BUF[6]~0 .BypassEn = 1'b0;
defparam \DATA_BUF[6]~0 .CarryEnb = 1'b1;

alta_slice \DATA_BUF[7] (
	.A(\Selector0~0_combout ),
	.B(\Selector0~4_combout ),
	.C(\ADDR[4]~input_o ),
	.D(\ADDR[6]~input_o ),
	.Cin(),
	.Qin(DATA_BUF[7]),
	.Clk(\iRD~combout_X4_Y28_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X4_Y28_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector0~5_combout ),
	.Cout(),
	.Q(DATA_BUF[7]));
defparam \DATA_BUF[7] .coord_x = 4;
defparam \DATA_BUF[7] .coord_y = 2;
defparam \DATA_BUF[7] .coord_z = 1;
defparam \DATA_BUF[7] .mask = 16'h5010;
defparam \DATA_BUF[7] .modeMux = 1'b0;
defparam \DATA_BUF[7] .FeedbackMux = 1'b0;
defparam \DATA_BUF[7] .ShiftMux = 1'b0;
defparam \DATA_BUF[7] .BypassEn = 1'b0;
defparam \DATA_BUF[7] .CarryEnb = 1'b1;

alta_io \DBG~input (
	.datain(gnd),
	.oe(gnd),
	.padio(DBG),
	.combout(\DBG~input_o ));
defparam \DBG~input .coord_x = 7;
defparam \DBG~input .coord_y = 2;
defparam \DBG~input .coord_z = 0;
defparam \DBG~input .PRG_DELAYB = 1'b1;
defparam \DBG~input .RX_SEL = 1'b0;
defparam \DBG~input .PDCNTL = 2'b11;
defparam \DBG~input .NDCNTL = 2'b11;
defparam \DBG~input .PRG_SLR = 1'b0;
defparam \DBG~input .CFG_KEEP = 2'b00;
defparam \DBG~input .PU = 4'b0000;

alta_io_gclk \DBG~inputclkctrl (
	.inclk(\DBG~input_o ),
	.outclk(\DBG~inputclkctrl_outclk ));
defparam \DBG~inputclkctrl .coord_x = 7;
defparam \DBG~inputclkctrl .coord_y = 2;
defparam \DBG~inputclkctrl .coord_z = 0;

alta_slice \DIV_REG[0] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[0]~input_o ),
	.Cin(),
	.Qin(DIV_REG[0]),
	.Clk(\iWR~clkctrl_outclk__DIV_REG[4]~1_combout_X2_Y24_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y24_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DIV_REG[0]~3_combout ),
	.Cout(),
	.Q(DIV_REG[0]));
defparam \DIV_REG[0] .coord_x = 2;
defparam \DIV_REG[0] .coord_y = 3;
defparam \DIV_REG[0] .coord_z = 5;
defparam \DIV_REG[0] .mask = 16'h00FF;
defparam \DIV_REG[0] .modeMux = 1'b0;
defparam \DIV_REG[0] .FeedbackMux = 1'b0;
defparam \DIV_REG[0] .ShiftMux = 1'b0;
defparam \DIV_REG[0] .BypassEn = 1'b0;
defparam \DIV_REG[0] .CarryEnb = 1'b1;

alta_slice \DIV_REG[1] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[1]~input_o ),
	.Cin(),
	.Qin(DIV_REG[1]),
	.Clk(\iWR~clkctrl_outclk__DIV_REG[4]~1_combout_X2_Y24_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y24_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DIV_REG[1]~7_combout ),
	.Cout(),
	.Q(DIV_REG[1]));
defparam \DIV_REG[1] .coord_x = 2;
defparam \DIV_REG[1] .coord_y = 3;
defparam \DIV_REG[1] .coord_z = 8;
defparam \DIV_REG[1] .mask = 16'h00FF;
defparam \DIV_REG[1] .modeMux = 1'b0;
defparam \DIV_REG[1] .FeedbackMux = 1'b0;
defparam \DIV_REG[1] .ShiftMux = 1'b0;
defparam \DIV_REG[1] .BypassEn = 1'b0;
defparam \DIV_REG[1] .CarryEnb = 1'b1;

alta_slice \DIV_REG[2] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[2]~input_o ),
	.Cin(),
	.Qin(DIV_REG[2]),
	.Clk(\iWR~clkctrl_outclk__DIV_REG[4]~1_combout_X1_Y24_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X1_Y24_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DIV_REG[2]~6_combout ),
	.Cout(),
	.Q(DIV_REG[2]));
defparam \DIV_REG[2] .coord_x = 1;
defparam \DIV_REG[2] .coord_y = 3;
defparam \DIV_REG[2] .coord_z = 5;
defparam \DIV_REG[2] .mask = 16'h00FF;
defparam \DIV_REG[2] .modeMux = 1'b0;
defparam \DIV_REG[2] .FeedbackMux = 1'b0;
defparam \DIV_REG[2] .ShiftMux = 1'b0;
defparam \DIV_REG[2] .BypassEn = 1'b0;
defparam \DIV_REG[2] .CarryEnb = 1'b1;

alta_slice \DIV_REG[3] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[3]~input_o ),
	.Cin(),
	.Qin(DIV_REG[3]),
	.Clk(\iWR~clkctrl_outclk__DIV_REG[4]~1_combout_X1_Y24_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X1_Y24_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DIV_REG[3]~5_combout ),
	.Cout(),
	.Q(DIV_REG[3]));
defparam \DIV_REG[3] .coord_x = 1;
defparam \DIV_REG[3] .coord_y = 3;
defparam \DIV_REG[3] .coord_z = 1;
defparam \DIV_REG[3] .mask = 16'h00FF;
defparam \DIV_REG[3] .modeMux = 1'b0;
defparam \DIV_REG[3] .FeedbackMux = 1'b0;
defparam \DIV_REG[3] .ShiftMux = 1'b0;
defparam \DIV_REG[3] .BypassEn = 1'b0;
defparam \DIV_REG[3] .CarryEnb = 1'b1;

alta_slice \DIV_REG[4] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[4]~input_o ),
	.Cin(),
	.Qin(DIV_REG[4]),
	.Clk(\iWR~clkctrl_outclk__DIV_REG[4]~1_combout_X1_Y24_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X1_Y24_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DIV_REG[4]~4_combout ),
	.Cout(),
	.Q(DIV_REG[4]));
defparam \DIV_REG[4] .coord_x = 1;
defparam \DIV_REG[4] .coord_y = 3;
defparam \DIV_REG[4] .coord_z = 3;
defparam \DIV_REG[4] .mask = 16'h00FF;
defparam \DIV_REG[4] .modeMux = 1'b0;
defparam \DIV_REG[4] .FeedbackMux = 1'b0;
defparam \DIV_REG[4] .ShiftMux = 1'b0;
defparam \DIV_REG[4] .BypassEn = 1'b0;
defparam \DIV_REG[4] .CarryEnb = 1'b1;

alta_slice \DIV_REG[4]~0 (
	.A(vcc),
	.B(\ADDR[2]~input_o ),
	.C(\ADDR[6]~input_o ),
	.D(\ADDR[4]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DIV_REG[4]~0_combout ),
	.Cout(),
	.Q());
defparam \DIV_REG[4]~0 .coord_x = 2;
defparam \DIV_REG[4]~0 .coord_y = 2;
defparam \DIV_REG[4]~0 .coord_z = 13;
defparam \DIV_REG[4]~0 .mask = 16'hC000;
defparam \DIV_REG[4]~0 .modeMux = 1'b0;
defparam \DIV_REG[4]~0 .FeedbackMux = 1'b0;
defparam \DIV_REG[4]~0 .ShiftMux = 1'b0;
defparam \DIV_REG[4]~0 .BypassEn = 1'b0;
defparam \DIV_REG[4]~0 .CarryEnb = 1'b1;

alta_slice \DIV_REG[4]~1 (
	.A(\DIV_REG[4]~0_combout ),
	.B(\Selector3~0_combout ),
	.C(\SAFE_REG~q ),
	.D(\ADDR[7]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DIV_REG[4]~1_combout ),
	.Cout(),
	.Q());
defparam \DIV_REG[4]~1 .coord_x = 1;
defparam \DIV_REG[4]~1 .coord_y = 3;
defparam \DIV_REG[4]~1 .coord_z = 4;
defparam \DIV_REG[4]~1 .mask = 16'h8000;
defparam \DIV_REG[4]~1 .modeMux = 1'b0;
defparam \DIV_REG[4]~1 .FeedbackMux = 1'b0;
defparam \DIV_REG[4]~1 .ShiftMux = 1'b0;
defparam \DIV_REG[4]~1 .BypassEn = 1'b0;
defparam \DIV_REG[4]~1 .CarryEnb = 1'b1;

alta_slice \DIV_REG[4]~2 (
	.A(vcc),
	.B(\DIV_REG[4]~0_combout ),
	.C(\Selector3~0_combout ),
	.D(\ADDR[7]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\DIV_REG[4]~2_combout ),
	.Cout(),
	.Q());
defparam \DIV_REG[4]~2 .coord_x = 2;
defparam \DIV_REG[4]~2 .coord_y = 2;
defparam \DIV_REG[4]~2 .coord_z = 3;
defparam \DIV_REG[4]~2 .mask = 16'hC000;
defparam \DIV_REG[4]~2 .modeMux = 1'b0;
defparam \DIV_REG[4]~2 .FeedbackMux = 1'b0;
defparam \DIV_REG[4]~2 .ShiftMux = 1'b0;
defparam \DIV_REG[4]~2 .BypassEn = 1'b0;
defparam \DIV_REG[4]~2 .CarryEnb = 1'b1;

alta_slice \Decoder0~0 (
	.A(vcc),
	.B(vcc),
	.C(\ADDR[1]~input_o ),
	.D(\ADDR[0]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Decoder0~0_combout ),
	.Cout(),
	.Q());
defparam \Decoder0~0 .coord_x = 1;
defparam \Decoder0~0 .coord_y = 2;
defparam \Decoder0~0 .coord_z = 12;
defparam \Decoder0~0 .mask = 16'h000F;
defparam \Decoder0~0 .modeMux = 1'b0;
defparam \Decoder0~0 .FeedbackMux = 1'b0;
defparam \Decoder0~0 .ShiftMux = 1'b0;
defparam \Decoder0~0 .BypassEn = 1'b0;
defparam \Decoder0~0 .CarryEnb = 1'b1;

alta_slice \Decoder0~1 (
	.A(\Decoder0~0_combout ),
	.B(\ADDR[4]~input_o ),
	.C(\DATA_BUF[6]~0_combout ),
	.D(\ADDR[2]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Decoder0~1_combout ),
	.Cout(),
	.Q());
defparam \Decoder0~1 .coord_x = 2;
defparam \Decoder0~1 .coord_y = 2;
defparam \Decoder0~1 .coord_z = 1;
defparam \Decoder0~1 .mask = 16'h0080;
defparam \Decoder0~1 .modeMux = 1'b0;
defparam \Decoder0~1 .FeedbackMux = 1'b0;
defparam \Decoder0~1 .ShiftMux = 1'b0;
defparam \Decoder0~1 .BypassEn = 1'b0;
defparam \Decoder0~1 .CarryEnb = 1'b1;

alta_slice \Decoder0~2 (
	.A(\Decoder0~0_combout ),
	.B(\DATA_BUF[6]~0_combout ),
	.C(\ADDR[2]~input_o ),
	.D(\ADDR[4]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Decoder0~2_combout ),
	.Cout(),
	.Q());
defparam \Decoder0~2 .coord_x = 1;
defparam \Decoder0~2 .coord_y = 2;
defparam \Decoder0~2 .coord_z = 13;
defparam \Decoder0~2 .mask = 16'h8000;
defparam \Decoder0~2 .modeMux = 1'b0;
defparam \Decoder0~2 .FeedbackMux = 1'b0;
defparam \Decoder0~2 .ShiftMux = 1'b0;
defparam \Decoder0~2 .BypassEn = 1'b0;
defparam \Decoder0~2 .CarryEnb = 1'b1;

alta_slice \Decoder0~3 (
	.A(vcc),
	.B(\ADDR[7]~input_o ),
	.C(\ADDR[5]~input_o ),
	.D(\ADDR[3]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Decoder0~3_combout ),
	.Cout(),
	.Q());
defparam \Decoder0~3 .coord_x = 1;
defparam \Decoder0~3 .coord_y = 2;
defparam \Decoder0~3 .coord_z = 8;
defparam \Decoder0~3 .mask = 16'h0003;
defparam \Decoder0~3 .modeMux = 1'b0;
defparam \Decoder0~3 .FeedbackMux = 1'b0;
defparam \Decoder0~3 .ShiftMux = 1'b0;
defparam \Decoder0~3 .BypassEn = 1'b0;
defparam \Decoder0~3 .CarryEnb = 1'b1;

alta_slice \Equal0~0 (
	.A(vcc),
	.B(\ADDR[6]~input_o ),
	.C(\ADDR[4]~input_o ),
	.D(\ADDR[7]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Equal0~0_combout ),
	.Cout(),
	.Q());
defparam \Equal0~0 .coord_x = 1;
defparam \Equal0~0 .coord_y = 2;
defparam \Equal0~0 .coord_z = 3;
defparam \Equal0~0 .mask = 16'h0003;
defparam \Equal0~0 .modeMux = 1'b0;
defparam \Equal0~0 .FeedbackMux = 1'b0;
defparam \Equal0~0 .ShiftMux = 1'b0;
defparam \Equal0~0 .BypassEn = 1'b0;
defparam \Equal0~0 .CarryEnb = 1'b1;

alta_io \INT~output (
	.datain(vcc),
	.oe(vcc),
	.padio(INT),
	.combout());
defparam \INT~output .coord_x = 2;
defparam \INT~output .coord_y = 4;
defparam \INT~output .coord_z = 5;
defparam \INT~output .PRG_DELAYB = 1'b1;
defparam \INT~output .RX_SEL = 1'b0;
defparam \INT~output .PDCNTL = 2'b11;
defparam \INT~output .NDCNTL = 2'b11;
defparam \INT~output .PRG_SLR = 1'b0;
defparam \INT~output .CFG_KEEP = 2'b00;
defparam \INT~output .PU = 4'b0000;

alta_io \IORQ~input (
	.datain(gnd),
	.oe(gnd),
	.padio(IORQ),
	.combout(\IORQ~input_o ));
defparam \IORQ~input .coord_x = 2;
defparam \IORQ~input .coord_y = 4;
defparam \IORQ~input .coord_z = 2;
defparam \IORQ~input .PRG_DELAYB = 1'b1;
defparam \IORQ~input .RX_SEL = 1'b0;
defparam \IORQ~input .PDCNTL = 2'b11;
defparam \IORQ~input .NDCNTL = 2'b11;
defparam \IORQ~input .PRG_SLR = 1'b0;
defparam \IORQ~input .CFG_KEEP = 2'b00;
defparam \IORQ~input .PU = 4'b0000;

alta_io \KEY_C[0]~output (
	.datain(!\ki_san|COL [0]),
	.oe(vcc),
	.padio(KEY_C[0]),
	.combout());
defparam \KEY_C[0]~output .coord_x = 3;
defparam \KEY_C[0]~output .coord_y = 0;
defparam \KEY_C[0]~output .coord_z = 0;
defparam \KEY_C[0]~output .PRG_DELAYB = 1'b1;
defparam \KEY_C[0]~output .RX_SEL = 1'b0;
defparam \KEY_C[0]~output .PDCNTL = 2'b11;
defparam \KEY_C[0]~output .NDCNTL = 2'b11;
defparam \KEY_C[0]~output .PRG_SLR = 1'b0;
defparam \KEY_C[0]~output .CFG_KEEP = 2'b00;
defparam \KEY_C[0]~output .PU = 4'b0000;

alta_io \KEY_C[10]~output (
	.datain(!\ki_san|COL [10]),
	.oe(vcc),
	.padio(KEY_C[10]),
	.combout());
defparam \KEY_C[10]~output .coord_x = 4;
defparam \KEY_C[10]~output .coord_y = 0;
defparam \KEY_C[10]~output .coord_z = 5;
defparam \KEY_C[10]~output .PRG_DELAYB = 1'b1;
defparam \KEY_C[10]~output .RX_SEL = 1'b0;
defparam \KEY_C[10]~output .PDCNTL = 2'b11;
defparam \KEY_C[10]~output .NDCNTL = 2'b11;
defparam \KEY_C[10]~output .PRG_SLR = 1'b0;
defparam \KEY_C[10]~output .CFG_KEEP = 2'b00;
defparam \KEY_C[10]~output .PU = 4'b0000;

alta_io \KEY_C[11]~output (
	.datain(!\ki_san|COL [11]),
	.oe(vcc),
	.padio(KEY_C[11]),
	.combout());
defparam \KEY_C[11]~output .coord_x = 5;
defparam \KEY_C[11]~output .coord_y = 0;
defparam \KEY_C[11]~output .coord_z = 0;
defparam \KEY_C[11]~output .PRG_DELAYB = 1'b1;
defparam \KEY_C[11]~output .RX_SEL = 1'b0;
defparam \KEY_C[11]~output .PDCNTL = 2'b11;
defparam \KEY_C[11]~output .NDCNTL = 2'b11;
defparam \KEY_C[11]~output .PRG_SLR = 1'b0;
defparam \KEY_C[11]~output .CFG_KEEP = 2'b00;
defparam \KEY_C[11]~output .PU = 4'b0000;

alta_io \KEY_C[12]~output (
	.datain(!\ki_san|COL [12]),
	.oe(vcc),
	.padio(KEY_C[12]),
	.combout());
defparam \KEY_C[12]~output .coord_x = 5;
defparam \KEY_C[12]~output .coord_y = 0;
defparam \KEY_C[12]~output .coord_z = 1;
defparam \KEY_C[12]~output .PRG_DELAYB = 1'b1;
defparam \KEY_C[12]~output .RX_SEL = 1'b0;
defparam \KEY_C[12]~output .PDCNTL = 2'b11;
defparam \KEY_C[12]~output .NDCNTL = 2'b11;
defparam \KEY_C[12]~output .PRG_SLR = 1'b0;
defparam \KEY_C[12]~output .CFG_KEEP = 2'b00;
defparam \KEY_C[12]~output .PU = 4'b0000;

alta_io \KEY_C[13]~output (
	.datain(!\ki_san|COL [13]),
	.oe(vcc),
	.padio(KEY_C[13]),
	.combout());
defparam \KEY_C[13]~output .coord_x = 5;
defparam \KEY_C[13]~output .coord_y = 0;
defparam \KEY_C[13]~output .coord_z = 2;
defparam \KEY_C[13]~output .PRG_DELAYB = 1'b1;
defparam \KEY_C[13]~output .RX_SEL = 1'b0;
defparam \KEY_C[13]~output .PDCNTL = 2'b11;
defparam \KEY_C[13]~output .NDCNTL = 2'b11;
defparam \KEY_C[13]~output .PRG_SLR = 1'b0;
defparam \KEY_C[13]~output .CFG_KEEP = 2'b00;
defparam \KEY_C[13]~output .PU = 4'b0000;

alta_io \KEY_C[14]~output (
	.datain(!\ki_san|COL [14]),
	.oe(vcc),
	.padio(KEY_C[14]),
	.combout());
defparam \KEY_C[14]~output .coord_x = 5;
defparam \KEY_C[14]~output .coord_y = 0;
defparam \KEY_C[14]~output .coord_z = 3;
defparam \KEY_C[14]~output .PRG_DELAYB = 1'b1;
defparam \KEY_C[14]~output .RX_SEL = 1'b0;
defparam \KEY_C[14]~output .PDCNTL = 2'b11;
defparam \KEY_C[14]~output .NDCNTL = 2'b11;
defparam \KEY_C[14]~output .PRG_SLR = 1'b0;
defparam \KEY_C[14]~output .CFG_KEEP = 2'b00;
defparam \KEY_C[14]~output .PU = 4'b0000;

alta_io \KEY_C[1]~output (
	.datain(!\ki_san|COL [1]),
	.oe(vcc),
	.padio(KEY_C[1]),
	.combout());
defparam \KEY_C[1]~output .coord_x = 3;
defparam \KEY_C[1]~output .coord_y = 0;
defparam \KEY_C[1]~output .coord_z = 1;
defparam \KEY_C[1]~output .PRG_DELAYB = 1'b1;
defparam \KEY_C[1]~output .RX_SEL = 1'b0;
defparam \KEY_C[1]~output .PDCNTL = 2'b11;
defparam \KEY_C[1]~output .NDCNTL = 2'b11;
defparam \KEY_C[1]~output .PRG_SLR = 1'b0;
defparam \KEY_C[1]~output .CFG_KEEP = 2'b00;
defparam \KEY_C[1]~output .PU = 4'b0000;

alta_io \KEY_C[2]~output (
	.datain(!\ki_san|COL [2]),
	.oe(vcc),
	.padio(KEY_C[2]),
	.combout());
defparam \KEY_C[2]~output .coord_x = 3;
defparam \KEY_C[2]~output .coord_y = 0;
defparam \KEY_C[2]~output .coord_z = 2;
defparam \KEY_C[2]~output .PRG_DELAYB = 1'b1;
defparam \KEY_C[2]~output .RX_SEL = 1'b0;
defparam \KEY_C[2]~output .PDCNTL = 2'b11;
defparam \KEY_C[2]~output .NDCNTL = 2'b11;
defparam \KEY_C[2]~output .PRG_SLR = 1'b0;
defparam \KEY_C[2]~output .CFG_KEEP = 2'b00;
defparam \KEY_C[2]~output .PU = 4'b0000;

alta_io \KEY_C[3]~output (
	.datain(!\ki_san|COL [3]),
	.oe(vcc),
	.padio(KEY_C[3]),
	.combout());
defparam \KEY_C[3]~output .coord_x = 3;
defparam \KEY_C[3]~output .coord_y = 0;
defparam \KEY_C[3]~output .coord_z = 3;
defparam \KEY_C[3]~output .PRG_DELAYB = 1'b1;
defparam \KEY_C[3]~output .RX_SEL = 1'b0;
defparam \KEY_C[3]~output .PDCNTL = 2'b11;
defparam \KEY_C[3]~output .NDCNTL = 2'b11;
defparam \KEY_C[3]~output .PRG_SLR = 1'b0;
defparam \KEY_C[3]~output .CFG_KEEP = 2'b00;
defparam \KEY_C[3]~output .PU = 4'b0000;

alta_io \KEY_C[4]~output (
	.datain(!\ki_san|COL [4]),
	.oe(vcc),
	.padio(KEY_C[4]),
	.combout());
defparam \KEY_C[4]~output .coord_x = 3;
defparam \KEY_C[4]~output .coord_y = 0;
defparam \KEY_C[4]~output .coord_z = 4;
defparam \KEY_C[4]~output .PRG_DELAYB = 1'b1;
defparam \KEY_C[4]~output .RX_SEL = 1'b0;
defparam \KEY_C[4]~output .PDCNTL = 2'b11;
defparam \KEY_C[4]~output .NDCNTL = 2'b11;
defparam \KEY_C[4]~output .PRG_SLR = 1'b0;
defparam \KEY_C[4]~output .CFG_KEEP = 2'b00;
defparam \KEY_C[4]~output .PU = 4'b0000;

alta_io \KEY_C[5]~output (
	.datain(!\ki_san|COL [5]),
	.oe(vcc),
	.padio(KEY_C[5]),
	.combout());
defparam \KEY_C[5]~output .coord_x = 4;
defparam \KEY_C[5]~output .coord_y = 0;
defparam \KEY_C[5]~output .coord_z = 0;
defparam \KEY_C[5]~output .PRG_DELAYB = 1'b1;
defparam \KEY_C[5]~output .RX_SEL = 1'b0;
defparam \KEY_C[5]~output .PDCNTL = 2'b11;
defparam \KEY_C[5]~output .NDCNTL = 2'b11;
defparam \KEY_C[5]~output .PRG_SLR = 1'b0;
defparam \KEY_C[5]~output .CFG_KEEP = 2'b00;
defparam \KEY_C[5]~output .PU = 4'b0000;

alta_io \KEY_C[6]~output (
	.datain(!\ki_san|COL [6]),
	.oe(vcc),
	.padio(KEY_C[6]),
	.combout());
defparam \KEY_C[6]~output .coord_x = 4;
defparam \KEY_C[6]~output .coord_y = 0;
defparam \KEY_C[6]~output .coord_z = 1;
defparam \KEY_C[6]~output .PRG_DELAYB = 1'b1;
defparam \KEY_C[6]~output .RX_SEL = 1'b0;
defparam \KEY_C[6]~output .PDCNTL = 2'b11;
defparam \KEY_C[6]~output .NDCNTL = 2'b11;
defparam \KEY_C[6]~output .PRG_SLR = 1'b0;
defparam \KEY_C[6]~output .CFG_KEEP = 2'b00;
defparam \KEY_C[6]~output .PU = 4'b0000;

alta_io \KEY_C[7]~output (
	.datain(!\ki_san|COL [7]),
	.oe(vcc),
	.padio(KEY_C[7]),
	.combout());
defparam \KEY_C[7]~output .coord_x = 4;
defparam \KEY_C[7]~output .coord_y = 0;
defparam \KEY_C[7]~output .coord_z = 2;
defparam \KEY_C[7]~output .PRG_DELAYB = 1'b1;
defparam \KEY_C[7]~output .RX_SEL = 1'b0;
defparam \KEY_C[7]~output .PDCNTL = 2'b11;
defparam \KEY_C[7]~output .NDCNTL = 2'b11;
defparam \KEY_C[7]~output .PRG_SLR = 1'b0;
defparam \KEY_C[7]~output .CFG_KEEP = 2'b00;
defparam \KEY_C[7]~output .PU = 4'b0000;

alta_io \KEY_C[8]~output (
	.datain(!\ki_san|COL [8]),
	.oe(vcc),
	.padio(KEY_C[8]),
	.combout());
defparam \KEY_C[8]~output .coord_x = 4;
defparam \KEY_C[8]~output .coord_y = 0;
defparam \KEY_C[8]~output .coord_z = 3;
defparam \KEY_C[8]~output .PRG_DELAYB = 1'b1;
defparam \KEY_C[8]~output .RX_SEL = 1'b0;
defparam \KEY_C[8]~output .PDCNTL = 2'b11;
defparam \KEY_C[8]~output .NDCNTL = 2'b11;
defparam \KEY_C[8]~output .PRG_SLR = 1'b0;
defparam \KEY_C[8]~output .CFG_KEEP = 2'b00;
defparam \KEY_C[8]~output .PU = 4'b0000;

alta_io \KEY_C[9]~output (
	.datain(!\ki_san|COL [9]),
	.oe(vcc),
	.padio(KEY_C[9]),
	.combout());
defparam \KEY_C[9]~output .coord_x = 4;
defparam \KEY_C[9]~output .coord_y = 0;
defparam \KEY_C[9]~output .coord_z = 4;
defparam \KEY_C[9]~output .PRG_DELAYB = 1'b1;
defparam \KEY_C[9]~output .RX_SEL = 1'b0;
defparam \KEY_C[9]~output .PDCNTL = 2'b11;
defparam \KEY_C[9]~output .NDCNTL = 2'b11;
defparam \KEY_C[9]~output .PRG_SLR = 1'b0;
defparam \KEY_C[9]~output .CFG_KEEP = 2'b00;
defparam \KEY_C[9]~output .PU = 4'b0000;

alta_io \KEY_R[0]~input (
	.datain(gnd),
	.oe(gnd),
	.padio(KEY_R[0]),
	.combout(\KEY_R[0]~input_o ));
defparam \KEY_R[0]~input .coord_x = 5;
defparam \KEY_R[0]~input .coord_y = 0;
defparam \KEY_R[0]~input .coord_z = 4;
defparam \KEY_R[0]~input .PRG_DELAYB = 1'b1;
defparam \KEY_R[0]~input .RX_SEL = 1'b0;
defparam \KEY_R[0]~input .PDCNTL = 2'b11;
defparam \KEY_R[0]~input .NDCNTL = 2'b11;
defparam \KEY_R[0]~input .PRG_SLR = 1'b0;
defparam \KEY_R[0]~input .CFG_KEEP = 2'b00;
defparam \KEY_R[0]~input .PU = 4'b0000;

alta_io \KEY_R[1]~input (
	.datain(gnd),
	.oe(gnd),
	.padio(KEY_R[1]),
	.combout(\KEY_R[1]~input_o ));
defparam \KEY_R[1]~input .coord_x = 6;
defparam \KEY_R[1]~input .coord_y = 0;
defparam \KEY_R[1]~input .coord_z = 0;
defparam \KEY_R[1]~input .PRG_DELAYB = 1'b1;
defparam \KEY_R[1]~input .RX_SEL = 1'b0;
defparam \KEY_R[1]~input .PDCNTL = 2'b11;
defparam \KEY_R[1]~input .NDCNTL = 2'b11;
defparam \KEY_R[1]~input .PRG_SLR = 1'b0;
defparam \KEY_R[1]~input .CFG_KEEP = 2'b00;
defparam \KEY_R[1]~input .PU = 4'b0000;

alta_io \KEY_R[2]~input (
	.datain(gnd),
	.oe(gnd),
	.padio(KEY_R[2]),
	.combout(\KEY_R[2]~input_o ));
defparam \KEY_R[2]~input .coord_x = 6;
defparam \KEY_R[2]~input .coord_y = 0;
defparam \KEY_R[2]~input .coord_z = 1;
defparam \KEY_R[2]~input .PRG_DELAYB = 1'b1;
defparam \KEY_R[2]~input .RX_SEL = 1'b0;
defparam \KEY_R[2]~input .PDCNTL = 2'b11;
defparam \KEY_R[2]~input .NDCNTL = 2'b11;
defparam \KEY_R[2]~input .PRG_SLR = 1'b0;
defparam \KEY_R[2]~input .CFG_KEEP = 2'b00;
defparam \KEY_R[2]~input .PU = 4'b0000;

alta_io \KEY_R[3]~input (
	.datain(gnd),
	.oe(gnd),
	.padio(KEY_R[3]),
	.combout(\KEY_R[3]~input_o ));
defparam \KEY_R[3]~input .coord_x = 6;
defparam \KEY_R[3]~input .coord_y = 0;
defparam \KEY_R[3]~input .coord_z = 2;
defparam \KEY_R[3]~input .PRG_DELAYB = 1'b1;
defparam \KEY_R[3]~input .RX_SEL = 1'b0;
defparam \KEY_R[3]~input .PDCNTL = 2'b11;
defparam \KEY_R[3]~input .NDCNTL = 2'b11;
defparam \KEY_R[3]~input .PRG_SLR = 1'b0;
defparam \KEY_R[3]~input .CFG_KEEP = 2'b00;
defparam \KEY_R[3]~input .PU = 4'b0000;

alta_io \KEY_R[4]~input (
	.datain(gnd),
	.oe(gnd),
	.padio(KEY_R[4]),
	.combout(\KEY_R[4]~input_o ));
defparam \KEY_R[4]~input .coord_x = 6;
defparam \KEY_R[4]~input .coord_y = 0;
defparam \KEY_R[4]~input .coord_z = 3;
defparam \KEY_R[4]~input .PRG_DELAYB = 1'b1;
defparam \KEY_R[4]~input .RX_SEL = 1'b0;
defparam \KEY_R[4]~input .PDCNTL = 2'b11;
defparam \KEY_R[4]~input .NDCNTL = 2'b11;
defparam \KEY_R[4]~input .PRG_SLR = 1'b0;
defparam \KEY_R[4]~input .CFG_KEEP = 2'b00;
defparam \KEY_R[4]~input .PU = 4'b0000;

alta_io \LCD_A0~output (
	.datain(\ADDR[0]~input_o ),
	.oe(vcc),
	.padio(LCD_A0),
	.combout());
defparam \LCD_A0~output .coord_x = 5;
defparam \LCD_A0~output .coord_y = 4;
defparam \LCD_A0~output .coord_z = 4;
defparam \LCD_A0~output .PRG_DELAYB = 1'b1;
defparam \LCD_A0~output .RX_SEL = 1'b0;
defparam \LCD_A0~output .PDCNTL = 2'b11;
defparam \LCD_A0~output .NDCNTL = 2'b11;
defparam \LCD_A0~output .PRG_SLR = 1'b0;
defparam \LCD_A0~output .CFG_KEEP = 2'b00;
defparam \LCD_A0~output .PU = 4'b0000;

alta_io \LCD_BLK~output (
	.datain(vcc),
	.oe(vcc),
	.padio(LCD_BLK),
	.combout());
defparam \LCD_BLK~output .coord_x = 6;
defparam \LCD_BLK~output .coord_y = 4;
defparam \LCD_BLK~output .coord_z = 4;
defparam \LCD_BLK~output .PRG_DELAYB = 1'b1;
defparam \LCD_BLK~output .RX_SEL = 1'b0;
defparam \LCD_BLK~output .PDCNTL = 2'b11;
defparam \LCD_BLK~output .NDCNTL = 2'b11;
defparam \LCD_BLK~output .PRG_SLR = 1'b0;
defparam \LCD_BLK~output .CFG_KEEP = 2'b00;
defparam \LCD_BLK~output .PU = 4'b0000;

alta_slice \LCD_CS~0 (
	.A(\ADDR[5]~input_o ),
	.B(\IORQ~input_o ),
	.C(\LCD_DATA_BUF~1_combout ),
	.D(\Equal0~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LCD_CS~0_combout ),
	.Cout(),
	.Q());
defparam \LCD_CS~0 .coord_x = 1;
defparam \LCD_CS~0 .coord_y = 2;
defparam \LCD_CS~0 .coord_z = 7;
defparam \LCD_CS~0 .mask = 16'hDFCF;
defparam \LCD_CS~0 .modeMux = 1'b0;
defparam \LCD_CS~0 .FeedbackMux = 1'b0;
defparam \LCD_CS~0 .ShiftMux = 1'b0;
defparam \LCD_CS~0 .BypassEn = 1'b0;
defparam \LCD_CS~0 .CarryEnb = 1'b1;

alta_io \LCD_CS~output (
	.datain(\LCD_CS~0_combout ),
	.oe(vcc),
	.padio(LCD_CS),
	.combout());
defparam \LCD_CS~output .coord_x = 3;
defparam \LCD_CS~output .coord_y = 4;
defparam \LCD_CS~output .coord_z = 2;
defparam \LCD_CS~output .PRG_DELAYB = 1'b1;
defparam \LCD_CS~output .RX_SEL = 1'b0;
defparam \LCD_CS~output .PDCNTL = 2'b11;
defparam \LCD_CS~output .NDCNTL = 2'b11;
defparam \LCD_CS~output .PRG_SLR = 1'b0;
defparam \LCD_CS~output .CFG_KEEP = 2'b00;
defparam \LCD_CS~output .PU = 4'b0000;

alta_io \LCD_DATA[0]~output (
	.datain(!LCD_DATA_BUF[0]),
	.oe(\LCD_DATA~16_combout ),
	.padio(LCD_DATA[0]),
	.combout(\LCD_DATA[0]~input_o ));
defparam \LCD_DATA[0]~output .coord_x = 5;
defparam \LCD_DATA[0]~output .coord_y = 4;
defparam \LCD_DATA[0]~output .coord_z = 2;
defparam \LCD_DATA[0]~output .PRG_DELAYB = 1'b1;
defparam \LCD_DATA[0]~output .RX_SEL = 1'b0;
defparam \LCD_DATA[0]~output .PDCNTL = 2'b11;
defparam \LCD_DATA[0]~output .NDCNTL = 2'b11;
defparam \LCD_DATA[0]~output .PRG_SLR = 1'b0;
defparam \LCD_DATA[0]~output .CFG_KEEP = 2'b00;
defparam \LCD_DATA[0]~output .PU = 4'b0000;

alta_io \LCD_DATA[1]~output (
	.datain(!LCD_DATA_BUF[1]),
	.oe(\LCD_DATA~16_combout ),
	.padio(LCD_DATA[1]),
	.combout(\LCD_DATA[1]~input_o ));
defparam \LCD_DATA[1]~output .coord_x = 5;
defparam \LCD_DATA[1]~output .coord_y = 4;
defparam \LCD_DATA[1]~output .coord_z = 1;
defparam \LCD_DATA[1]~output .PRG_DELAYB = 1'b1;
defparam \LCD_DATA[1]~output .RX_SEL = 1'b0;
defparam \LCD_DATA[1]~output .PDCNTL = 2'b11;
defparam \LCD_DATA[1]~output .NDCNTL = 2'b11;
defparam \LCD_DATA[1]~output .PRG_SLR = 1'b0;
defparam \LCD_DATA[1]~output .CFG_KEEP = 2'b00;
defparam \LCD_DATA[1]~output .PU = 4'b0000;

alta_io \LCD_DATA[2]~output (
	.datain(!LCD_DATA_BUF[2]),
	.oe(\LCD_DATA~16_combout ),
	.padio(LCD_DATA[2]),
	.combout(\LCD_DATA[2]~input_o ));
defparam \LCD_DATA[2]~output .coord_x = 5;
defparam \LCD_DATA[2]~output .coord_y = 4;
defparam \LCD_DATA[2]~output .coord_z = 0;
defparam \LCD_DATA[2]~output .PRG_DELAYB = 1'b1;
defparam \LCD_DATA[2]~output .RX_SEL = 1'b0;
defparam \LCD_DATA[2]~output .PDCNTL = 2'b11;
defparam \LCD_DATA[2]~output .NDCNTL = 2'b11;
defparam \LCD_DATA[2]~output .PRG_SLR = 1'b0;
defparam \LCD_DATA[2]~output .CFG_KEEP = 2'b00;
defparam \LCD_DATA[2]~output .PU = 4'b0000;

alta_io \LCD_DATA[3]~output (
	.datain(!LCD_DATA_BUF[3]),
	.oe(\LCD_DATA~16_combout ),
	.padio(LCD_DATA[3]),
	.combout(\LCD_DATA[3]~input_o ));
defparam \LCD_DATA[3]~output .coord_x = 4;
defparam \LCD_DATA[3]~output .coord_y = 4;
defparam \LCD_DATA[3]~output .coord_z = 4;
defparam \LCD_DATA[3]~output .PRG_DELAYB = 1'b1;
defparam \LCD_DATA[3]~output .RX_SEL = 1'b0;
defparam \LCD_DATA[3]~output .PDCNTL = 2'b11;
defparam \LCD_DATA[3]~output .NDCNTL = 2'b11;
defparam \LCD_DATA[3]~output .PRG_SLR = 1'b0;
defparam \LCD_DATA[3]~output .CFG_KEEP = 2'b00;
defparam \LCD_DATA[3]~output .PU = 4'b0000;

alta_io \LCD_DATA[4]~output (
	.datain(!LCD_DATA_BUF[4]),
	.oe(\LCD_DATA~16_combout ),
	.padio(LCD_DATA[4]),
	.combout(\LCD_DATA[4]~input_o ));
defparam \LCD_DATA[4]~output .coord_x = 4;
defparam \LCD_DATA[4]~output .coord_y = 4;
defparam \LCD_DATA[4]~output .coord_z = 3;
defparam \LCD_DATA[4]~output .PRG_DELAYB = 1'b1;
defparam \LCD_DATA[4]~output .RX_SEL = 1'b0;
defparam \LCD_DATA[4]~output .PDCNTL = 2'b11;
defparam \LCD_DATA[4]~output .NDCNTL = 2'b11;
defparam \LCD_DATA[4]~output .PRG_SLR = 1'b0;
defparam \LCD_DATA[4]~output .CFG_KEEP = 2'b00;
defparam \LCD_DATA[4]~output .PU = 4'b0000;

alta_io \LCD_DATA[5]~output (
	.datain(!LCD_DATA_BUF[5]),
	.oe(\LCD_DATA~16_combout ),
	.padio(LCD_DATA[5]),
	.combout(\LCD_DATA[5]~input_o ));
defparam \LCD_DATA[5]~output .coord_x = 4;
defparam \LCD_DATA[5]~output .coord_y = 4;
defparam \LCD_DATA[5]~output .coord_z = 2;
defparam \LCD_DATA[5]~output .PRG_DELAYB = 1'b1;
defparam \LCD_DATA[5]~output .RX_SEL = 1'b0;
defparam \LCD_DATA[5]~output .PDCNTL = 2'b11;
defparam \LCD_DATA[5]~output .NDCNTL = 2'b11;
defparam \LCD_DATA[5]~output .PRG_SLR = 1'b0;
defparam \LCD_DATA[5]~output .CFG_KEEP = 2'b00;
defparam \LCD_DATA[5]~output .PU = 4'b0000;

alta_io \LCD_DATA[6]~output (
	.datain(!LCD_DATA_BUF[6]),
	.oe(\LCD_DATA~16_combout ),
	.padio(LCD_DATA[6]),
	.combout(\LCD_DATA[6]~input_o ));
defparam \LCD_DATA[6]~output .coord_x = 4;
defparam \LCD_DATA[6]~output .coord_y = 4;
defparam \LCD_DATA[6]~output .coord_z = 1;
defparam \LCD_DATA[6]~output .PRG_DELAYB = 1'b1;
defparam \LCD_DATA[6]~output .RX_SEL = 1'b0;
defparam \LCD_DATA[6]~output .PDCNTL = 2'b11;
defparam \LCD_DATA[6]~output .NDCNTL = 2'b11;
defparam \LCD_DATA[6]~output .PRG_SLR = 1'b0;
defparam \LCD_DATA[6]~output .CFG_KEEP = 2'b00;
defparam \LCD_DATA[6]~output .PU = 4'b0000;

alta_io \LCD_DATA[7]~output (
	.datain(!LCD_DATA_BUF[7]),
	.oe(\LCD_DATA~16_combout ),
	.padio(LCD_DATA[7]),
	.combout(\LCD_DATA[7]~input_o ));
defparam \LCD_DATA[7]~output .coord_x = 4;
defparam \LCD_DATA[7]~output .coord_y = 4;
defparam \LCD_DATA[7]~output .coord_z = 0;
defparam \LCD_DATA[7]~output .PRG_DELAYB = 1'b1;
defparam \LCD_DATA[7]~output .RX_SEL = 1'b0;
defparam \LCD_DATA[7]~output .PDCNTL = 2'b11;
defparam \LCD_DATA[7]~output .NDCNTL = 2'b11;
defparam \LCD_DATA[7]~output .PRG_SLR = 1'b0;
defparam \LCD_DATA[7]~output .CFG_KEEP = 2'b00;
defparam \LCD_DATA[7]~output .PU = 4'b0000;

alta_slice \LCD_DATA_BUF[0] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[0]~input_o ),
	.Cin(),
	.Qin(LCD_DATA_BUF[0]),
	.Clk(\iWR~clkctrl_outclk__LCD_DATA_BUF~2_combout_X2_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y30_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LCD_DATA_BUF[0]~3_combout ),
	.Cout(),
	.Q(LCD_DATA_BUF[0]));
defparam \LCD_DATA_BUF[0] .coord_x = 4;
defparam \LCD_DATA_BUF[0] .coord_y = 3;
defparam \LCD_DATA_BUF[0] .coord_z = 14;
defparam \LCD_DATA_BUF[0] .mask = 16'h00FF;
defparam \LCD_DATA_BUF[0] .modeMux = 1'b0;
defparam \LCD_DATA_BUF[0] .FeedbackMux = 1'b0;
defparam \LCD_DATA_BUF[0] .ShiftMux = 1'b0;
defparam \LCD_DATA_BUF[0] .BypassEn = 1'b0;
defparam \LCD_DATA_BUF[0] .CarryEnb = 1'b1;

alta_slice \LCD_DATA_BUF[1] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[1]~input_o ),
	.Cin(),
	.Qin(LCD_DATA_BUF[1]),
	.Clk(\iWR~clkctrl_outclk__LCD_DATA_BUF~2_combout_X2_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y30_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LCD_DATA_BUF[1]~4_combout ),
	.Cout(),
	.Q(LCD_DATA_BUF[1]));
defparam \LCD_DATA_BUF[1] .coord_x = 4;
defparam \LCD_DATA_BUF[1] .coord_y = 3;
defparam \LCD_DATA_BUF[1] .coord_z = 10;
defparam \LCD_DATA_BUF[1] .mask = 16'h00FF;
defparam \LCD_DATA_BUF[1] .modeMux = 1'b0;
defparam \LCD_DATA_BUF[1] .FeedbackMux = 1'b0;
defparam \LCD_DATA_BUF[1] .ShiftMux = 1'b0;
defparam \LCD_DATA_BUF[1] .BypassEn = 1'b0;
defparam \LCD_DATA_BUF[1] .CarryEnb = 1'b1;

alta_slice \LCD_DATA_BUF[2] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[2]~input_o ),
	.Cin(),
	.Qin(LCD_DATA_BUF[2]),
	.Clk(\iWR~clkctrl_outclk__LCD_DATA_BUF~2_combout_X2_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y30_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LCD_DATA_BUF[2]~5_combout ),
	.Cout(),
	.Q(LCD_DATA_BUF[2]));
defparam \LCD_DATA_BUF[2] .coord_x = 4;
defparam \LCD_DATA_BUF[2] .coord_y = 3;
defparam \LCD_DATA_BUF[2] .coord_z = 7;
defparam \LCD_DATA_BUF[2] .mask = 16'h00FF;
defparam \LCD_DATA_BUF[2] .modeMux = 1'b0;
defparam \LCD_DATA_BUF[2] .FeedbackMux = 1'b0;
defparam \LCD_DATA_BUF[2] .ShiftMux = 1'b0;
defparam \LCD_DATA_BUF[2] .BypassEn = 1'b0;
defparam \LCD_DATA_BUF[2] .CarryEnb = 1'b1;

alta_slice \LCD_DATA_BUF[3] (
	.A(vcc),
	.B(vcc),
	.C(\DATA[3]~input_o ),
	.D(vcc),
	.Cin(),
	.Qin(LCD_DATA_BUF[3]),
	.Clk(\iWR~clkctrl_outclk__LCD_DATA_BUF~2_combout_X2_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y30_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LCD_DATA_BUF[3]~6_combout ),
	.Cout(),
	.Q(LCD_DATA_BUF[3]));
defparam \LCD_DATA_BUF[3] .coord_x = 4;
defparam \LCD_DATA_BUF[3] .coord_y = 3;
defparam \LCD_DATA_BUF[3] .coord_z = 13;
defparam \LCD_DATA_BUF[3] .mask = 16'h0F0F;
defparam \LCD_DATA_BUF[3] .modeMux = 1'b0;
defparam \LCD_DATA_BUF[3] .FeedbackMux = 1'b0;
defparam \LCD_DATA_BUF[3] .ShiftMux = 1'b0;
defparam \LCD_DATA_BUF[3] .BypassEn = 1'b0;
defparam \LCD_DATA_BUF[3] .CarryEnb = 1'b1;

alta_slice \LCD_DATA_BUF[4] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[4]~input_o ),
	.Cin(),
	.Qin(LCD_DATA_BUF[4]),
	.Clk(\iWR~clkctrl_outclk__LCD_DATA_BUF~2_combout_X2_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y30_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LCD_DATA_BUF[4]~7_combout ),
	.Cout(),
	.Q(LCD_DATA_BUF[4]));
defparam \LCD_DATA_BUF[4] .coord_x = 4;
defparam \LCD_DATA_BUF[4] .coord_y = 3;
defparam \LCD_DATA_BUF[4] .coord_z = 11;
defparam \LCD_DATA_BUF[4] .mask = 16'h00FF;
defparam \LCD_DATA_BUF[4] .modeMux = 1'b0;
defparam \LCD_DATA_BUF[4] .FeedbackMux = 1'b0;
defparam \LCD_DATA_BUF[4] .ShiftMux = 1'b0;
defparam \LCD_DATA_BUF[4] .BypassEn = 1'b0;
defparam \LCD_DATA_BUF[4] .CarryEnb = 1'b1;

alta_slice \LCD_DATA_BUF[5] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[5]~input_o ),
	.Cin(),
	.Qin(LCD_DATA_BUF[5]),
	.Clk(\iWR~clkctrl_outclk__LCD_DATA_BUF~2_combout_X2_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y30_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LCD_DATA_BUF[5]~8_combout ),
	.Cout(),
	.Q(LCD_DATA_BUF[5]));
defparam \LCD_DATA_BUF[5] .coord_x = 4;
defparam \LCD_DATA_BUF[5] .coord_y = 3;
defparam \LCD_DATA_BUF[5] .coord_z = 5;
defparam \LCD_DATA_BUF[5] .mask = 16'h00FF;
defparam \LCD_DATA_BUF[5] .modeMux = 1'b0;
defparam \LCD_DATA_BUF[5] .FeedbackMux = 1'b0;
defparam \LCD_DATA_BUF[5] .ShiftMux = 1'b0;
defparam \LCD_DATA_BUF[5] .BypassEn = 1'b0;
defparam \LCD_DATA_BUF[5] .CarryEnb = 1'b1;

alta_slice \LCD_DATA_BUF[6] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[6]~input_o ),
	.Cin(),
	.Qin(LCD_DATA_BUF[6]),
	.Clk(\iWR~clkctrl_outclk__LCD_DATA_BUF~2_combout_X2_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y30_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LCD_DATA_BUF[6]~9_combout ),
	.Cout(),
	.Q(LCD_DATA_BUF[6]));
defparam \LCD_DATA_BUF[6] .coord_x = 4;
defparam \LCD_DATA_BUF[6] .coord_y = 3;
defparam \LCD_DATA_BUF[6] .coord_z = 15;
defparam \LCD_DATA_BUF[6] .mask = 16'h00FF;
defparam \LCD_DATA_BUF[6] .modeMux = 1'b0;
defparam \LCD_DATA_BUF[6] .FeedbackMux = 1'b0;
defparam \LCD_DATA_BUF[6] .ShiftMux = 1'b0;
defparam \LCD_DATA_BUF[6] .BypassEn = 1'b0;
defparam \LCD_DATA_BUF[6] .CarryEnb = 1'b1;

alta_slice \LCD_DATA_BUF[7] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[7]~input_o ),
	.Cin(),
	.Qin(LCD_DATA_BUF[7]),
	.Clk(\iWR~clkctrl_outclk__LCD_DATA_BUF~2_combout_X2_Y30_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y30_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LCD_DATA_BUF[7]~10_combout ),
	.Cout(),
	.Q(LCD_DATA_BUF[7]));
defparam \LCD_DATA_BUF[7] .coord_x = 4;
defparam \LCD_DATA_BUF[7] .coord_y = 3;
defparam \LCD_DATA_BUF[7] .coord_z = 3;
defparam \LCD_DATA_BUF[7] .mask = 16'h00FF;
defparam \LCD_DATA_BUF[7] .modeMux = 1'b0;
defparam \LCD_DATA_BUF[7] .FeedbackMux = 1'b0;
defparam \LCD_DATA_BUF[7] .ShiftMux = 1'b0;
defparam \LCD_DATA_BUF[7] .BypassEn = 1'b0;
defparam \LCD_DATA_BUF[7] .CarryEnb = 1'b1;

alta_slice \LCD_DATA_BUF~0 (
	.A(vcc),
	.B(\ADDR[6]~input_o ),
	.C(\ADDR[7]~input_o ),
	.D(\ADDR[3]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LCD_DATA_BUF~0_combout ),
	.Cout(),
	.Q());
defparam \LCD_DATA_BUF~0 .coord_x = 1;
defparam \LCD_DATA_BUF~0 .coord_y = 2;
defparam \LCD_DATA_BUF~0 .coord_z = 11;
defparam \LCD_DATA_BUF~0 .mask = 16'h0003;
defparam \LCD_DATA_BUF~0 .modeMux = 1'b0;
defparam \LCD_DATA_BUF~0 .FeedbackMux = 1'b0;
defparam \LCD_DATA_BUF~0 .ShiftMux = 1'b0;
defparam \LCD_DATA_BUF~0 .BypassEn = 1'b0;
defparam \LCD_DATA_BUF~0 .CarryEnb = 1'b1;

alta_slice \LCD_DATA_BUF~1 (
	.A(\ADDR[1]~input_o ),
	.B(\LCD_DATA_BUF~0_combout ),
	.C(\ADDR[2]~input_o ),
	.D(\ADDR[4]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LCD_DATA_BUF~1_combout ),
	.Cout(),
	.Q());
defparam \LCD_DATA_BUF~1 .coord_x = 1;
defparam \LCD_DATA_BUF~1 .coord_y = 2;
defparam \LCD_DATA_BUF~1 .coord_z = 4;
defparam \LCD_DATA_BUF~1 .mask = 16'h0004;
defparam \LCD_DATA_BUF~1 .modeMux = 1'b0;
defparam \LCD_DATA_BUF~1 .FeedbackMux = 1'b0;
defparam \LCD_DATA_BUF~1 .ShiftMux = 1'b0;
defparam \LCD_DATA_BUF~1 .BypassEn = 1'b0;
defparam \LCD_DATA_BUF~1 .CarryEnb = 1'b1;

alta_slice \LCD_DATA_BUF~2 (
	.A(\ADDR[5]~input_o ),
	.B(vcc),
	.C(vcc),
	.D(\LCD_DATA_BUF~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LCD_DATA_BUF~2_combout ),
	.Cout(),
	.Q());
defparam \LCD_DATA_BUF~2 .coord_x = 4;
defparam \LCD_DATA_BUF~2 .coord_y = 3;
defparam \LCD_DATA_BUF~2 .coord_z = 6;
defparam \LCD_DATA_BUF~2 .mask = 16'hAA00;
defparam \LCD_DATA_BUF~2 .modeMux = 1'b0;
defparam \LCD_DATA_BUF~2 .FeedbackMux = 1'b0;
defparam \LCD_DATA_BUF~2 .ShiftMux = 1'b0;
defparam \LCD_DATA_BUF~2 .BypassEn = 1'b0;
defparam \LCD_DATA_BUF~2 .CarryEnb = 1'b1;

alta_slice \LCD_DATA~16 (
	.A(vcc),
	.B(\WR~input_o ),
	.C(vcc),
	.D(\LCD_CS~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LCD_DATA~16_combout ),
	.Cout(),
	.Q());
defparam \LCD_DATA~16 .coord_x = 1;
defparam \LCD_DATA~16 .coord_y = 2;
defparam \LCD_DATA~16 .coord_z = 6;
defparam \LCD_DATA~16 .mask = 16'h0033;
defparam \LCD_DATA~16 .modeMux = 1'b0;
defparam \LCD_DATA~16 .FeedbackMux = 1'b0;
defparam \LCD_DATA~16 .ShiftMux = 1'b0;
defparam \LCD_DATA~16 .BypassEn = 1'b0;
defparam \LCD_DATA~16 .CarryEnb = 1'b1;

alta_io \LCD_RD~output (
	.datain(\RD~input_o ),
	.oe(vcc),
	.padio(LCD_RD),
	.combout());
defparam \LCD_RD~output .coord_x = 3;
defparam \LCD_RD~output .coord_y = 4;
defparam \LCD_RD~output .coord_z = 4;
defparam \LCD_RD~output .PRG_DELAYB = 1'b1;
defparam \LCD_RD~output .RX_SEL = 1'b0;
defparam \LCD_RD~output .PDCNTL = 2'b11;
defparam \LCD_RD~output .NDCNTL = 2'b11;
defparam \LCD_RD~output .PRG_SLR = 1'b0;
defparam \LCD_RD~output .CFG_KEEP = 2'b00;
defparam \LCD_RD~output .PU = 4'b0000;

alta_slice \LCD_RST~0 (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[7]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LCD_RST~0_combout ),
	.Cout(),
	.Q());
defparam \LCD_RST~0 .coord_x = 2;
defparam \LCD_RST~0 .coord_y = 2;
defparam \LCD_RST~0 .coord_z = 6;
defparam \LCD_RST~0 .mask = 16'h00FF;
defparam \LCD_RST~0 .modeMux = 1'b0;
defparam \LCD_RST~0 .FeedbackMux = 1'b0;
defparam \LCD_RST~0 .ShiftMux = 1'b0;
defparam \LCD_RST~0 .BypassEn = 1'b0;
defparam \LCD_RST~0 .CarryEnb = 1'b1;

alta_io \LCD_RST~output (
	.datain(!\LCD_RST~reg0_q ),
	.oe(vcc),
	.padio(LCD_RST),
	.combout());
defparam \LCD_RST~output .coord_x = 3;
defparam \LCD_RST~output .coord_y = 4;
defparam \LCD_RST~output .coord_z = 3;
defparam \LCD_RST~output .PRG_DELAYB = 1'b1;
defparam \LCD_RST~output .RX_SEL = 1'b0;
defparam \LCD_RST~output .PDCNTL = 2'b11;
defparam \LCD_RST~output .NDCNTL = 2'b11;
defparam \LCD_RST~output .PRG_SLR = 1'b0;
defparam \LCD_RST~output .CFG_KEEP = 2'b00;
defparam \LCD_RST~output .PU = 4'b0000;

alta_slice \LCD_RST~reg0 (
	.A(\KEY_R[1]~input_o ),
	.B(\ki_san|COL_POS [0]),
	.C(\LCD_RST~0_combout ),
	.D(vcc),
	.Cin(),
	.Qin(\LCD_RST~reg0_q ),
	.Clk(\iWR~clkctrl_outclk__Decoder0~1_combout_X5_Y28_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y28_INV ),
	.SyncReset(SyncReset_X5_Y28_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y28_VCC),
	.LutOut(\ki_san|DATA~16_combout ),
	.Cout(),
	.Q(\LCD_RST~reg0_q ));
defparam \LCD_RST~reg0 .coord_x = 5;
defparam \LCD_RST~reg0 .coord_y = 2;
defparam \LCD_RST~reg0 .coord_z = 2;
defparam \LCD_RST~reg0 .mask = 16'h1111;
defparam \LCD_RST~reg0 .modeMux = 1'b0;
defparam \LCD_RST~reg0 .FeedbackMux = 1'b0;
defparam \LCD_RST~reg0 .ShiftMux = 1'b0;
defparam \LCD_RST~reg0 .BypassEn = 1'b1;
defparam \LCD_RST~reg0 .CarryEnb = 1'b1;

alta_io \LCD_WR~output (
	.datain(\WR~input_o ),
	.oe(vcc),
	.padio(LCD_WR),
	.combout());
defparam \LCD_WR~output .coord_x = 5;
defparam \LCD_WR~output .coord_y = 4;
defparam \LCD_WR~output .coord_z = 3;
defparam \LCD_WR~output .PRG_DELAYB = 1'b1;
defparam \LCD_WR~output .RX_SEL = 1'b0;
defparam \LCD_WR~output .PDCNTL = 2'b11;
defparam \LCD_WR~output .NDCNTL = 2'b11;
defparam \LCD_WR~output .PRG_SLR = 1'b0;
defparam \LCD_WR~output .CFG_KEEP = 2'b00;
defparam \LCD_WR~output .PU = 4'b0000;

alta_io \LED[0]~output (
	.datain(!LED_REG[0]),
	.oe(vcc),
	.padio(LED[0]),
	.combout());
defparam \LED[0]~output .coord_x = 7;
defparam \LED[0]~output .coord_y = 2;
defparam \LED[0]~output .coord_z = 1;
defparam \LED[0]~output .PRG_DELAYB = 1'b1;
defparam \LED[0]~output .RX_SEL = 1'b0;
defparam \LED[0]~output .PDCNTL = 2'b11;
defparam \LED[0]~output .NDCNTL = 2'b11;
defparam \LED[0]~output .PRG_SLR = 1'b0;
defparam \LED[0]~output .CFG_KEEP = 2'b00;
defparam \LED[0]~output .PU = 4'b0000;

alta_io \LED[1]~output (
	.datain(!LED_REG[1]),
	.oe(vcc),
	.padio(LED[1]),
	.combout());
defparam \LED[1]~output .coord_x = 7;
defparam \LED[1]~output .coord_y = 2;
defparam \LED[1]~output .coord_z = 2;
defparam \LED[1]~output .PRG_DELAYB = 1'b1;
defparam \LED[1]~output .RX_SEL = 1'b0;
defparam \LED[1]~output .PDCNTL = 2'b11;
defparam \LED[1]~output .NDCNTL = 2'b11;
defparam \LED[1]~output .PRG_SLR = 1'b0;
defparam \LED[1]~output .CFG_KEEP = 2'b00;
defparam \LED[1]~output .PU = 4'b0000;

alta_slice \LED_REG[0] (
	.A(vcc),
	.B(vcc),
	.C(\DATA[0]~input_o ),
	.D(vcc),
	.Cin(),
	.Qin(LED_REG[0]),
	.Clk(\iWR~clkctrl_outclk__Decoder0~1_combout_X5_Y28_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y28_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LED_REG[0]~0_combout ),
	.Cout(),
	.Q(LED_REG[0]));
defparam \LED_REG[0] .coord_x = 5;
defparam \LED_REG[0] .coord_y = 2;
defparam \LED_REG[0] .coord_z = 12;
defparam \LED_REG[0] .mask = 16'h0F0F;
defparam \LED_REG[0] .modeMux = 1'b0;
defparam \LED_REG[0] .FeedbackMux = 1'b0;
defparam \LED_REG[0] .ShiftMux = 1'b0;
defparam \LED_REG[0] .BypassEn = 1'b0;
defparam \LED_REG[0] .CarryEnb = 1'b1;

alta_slice \LED_REG[1] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\DATA[1]~input_o ),
	.Cin(),
	.Qin(LED_REG[1]),
	.Clk(\iWR~clkctrl_outclk__Decoder0~1_combout_X5_Y28_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y28_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\LED_REG[1]~1_combout ),
	.Cout(),
	.Q(LED_REG[1]));
defparam \LED_REG[1] .coord_x = 5;
defparam \LED_REG[1] .coord_y = 2;
defparam \LED_REG[1] .coord_z = 10;
defparam \LED_REG[1] .mask = 16'h00FF;
defparam \LED_REG[1] .modeMux = 1'b0;
defparam \LED_REG[1] .FeedbackMux = 1'b0;
defparam \LED_REG[1] .ShiftMux = 1'b0;
defparam \LED_REG[1] .BypassEn = 1'b0;
defparam \LED_REG[1] .CarryEnb = 1'b1;

alta_io \MREQ~input (
	.datain(gnd),
	.oe(gnd),
	.padio(MREQ),
	.combout(\MREQ~input_o ));
defparam \MREQ~input .coord_x = 2;
defparam \MREQ~input .coord_y = 4;
defparam \MREQ~input .coord_z = 3;
defparam \MREQ~input .PRG_DELAYB = 1'b1;
defparam \MREQ~input .RX_SEL = 1'b0;
defparam \MREQ~input .PDCNTL = 2'b11;
defparam \MREQ~input .NDCNTL = 2'b11;
defparam \MREQ~input .PRG_SLR = 1'b0;
defparam \MREQ~input .CFG_KEEP = 2'b00;
defparam \MREQ~input .PU = 4'b0000;

alta_io \RD~input (
	.datain(gnd),
	.oe(gnd),
	.padio(RD),
	.combout(\RD~input_o ));
defparam \RD~input .coord_x = 2;
defparam \RD~input .coord_y = 4;
defparam \RD~input .coord_z = 1;
defparam \RD~input .PRG_DELAYB = 1'b1;
defparam \RD~input .RX_SEL = 1'b0;
defparam \RD~input .PDCNTL = 2'b11;
defparam \RD~input .NDCNTL = 2'b11;
defparam \RD~input .PRG_SLR = 1'b0;
defparam \RD~input .CFG_KEEP = 2'b00;
defparam \RD~input .PU = 4'b0000;

alta_slice SAFE_REG(
	.A(\SAFE_REG~0_combout ),
	.B(\Selector3~0_combout ),
	.C(vcc),
	.D(\SAFE_REG~3_combout ),
	.Cin(),
	.Qin(\SAFE_REG~q ),
	.Clk(\iWR~clkctrl_outclk_X1_Y28_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X1_Y28_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\SAFE_REG~4_combout ),
	.Cout(),
	.Q(\SAFE_REG~q ));
defparam SAFE_REG.coord_x = 1;
defparam SAFE_REG.coord_y = 2;
defparam SAFE_REG.coord_z = 14;
defparam SAFE_REG.mask = 16'hF870;
defparam SAFE_REG.modeMux = 1'b0;
defparam SAFE_REG.FeedbackMux = 1'b1;
defparam SAFE_REG.ShiftMux = 1'b0;
defparam SAFE_REG.BypassEn = 1'b0;
defparam SAFE_REG.CarryEnb = 1'b1;

alta_slice \SAFE_REG~0 (
	.A(\ADDR[7]~input_o ),
	.B(\ADDR[6]~input_o ),
	.C(\ADDR[2]~input_o ),
	.D(\ADDR[4]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\SAFE_REG~0_combout ),
	.Cout(),
	.Q());
defparam \SAFE_REG~0 .coord_x = 1;
defparam \SAFE_REG~0 .coord_y = 2;
defparam \SAFE_REG~0 .coord_z = 10;
defparam \SAFE_REG~0 .mask = 16'h8002;
defparam \SAFE_REG~0 .modeMux = 1'b0;
defparam \SAFE_REG~0 .FeedbackMux = 1'b0;
defparam \SAFE_REG~0 .ShiftMux = 1'b0;
defparam \SAFE_REG~0 .BypassEn = 1'b0;
defparam \SAFE_REG~0 .CarryEnb = 1'b1;

alta_slice \SAFE_REG~1 (
	.A(\DATA[7]~input_o ),
	.B(\DATA[6]~input_o ),
	.C(\ADDR[2]~input_o ),
	.D(\DATA[5]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\SAFE_REG~1_combout ),
	.Cout(),
	.Q());
defparam \SAFE_REG~1 .coord_x = 4;
defparam \SAFE_REG~1 .coord_y = 3;
defparam \SAFE_REG~1 .coord_z = 4;
defparam \SAFE_REG~1 .mask = 16'h0004;
defparam \SAFE_REG~1 .modeMux = 1'b0;
defparam \SAFE_REG~1 .FeedbackMux = 1'b0;
defparam \SAFE_REG~1 .ShiftMux = 1'b0;
defparam \SAFE_REG~1 .BypassEn = 1'b0;
defparam \SAFE_REG~1 .CarryEnb = 1'b1;

alta_slice \SAFE_REG~2 (
	.A(\DATA[1]~input_o ),
	.B(\DATA[4]~input_o ),
	.C(\DATA[3]~input_o ),
	.D(\DATA[2]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\SAFE_REG~2_combout ),
	.Cout(),
	.Q());
defparam \SAFE_REG~2 .coord_x = 4;
defparam \SAFE_REG~2 .coord_y = 3;
defparam \SAFE_REG~2 .coord_z = 8;
defparam \SAFE_REG~2 .mask = 16'h0400;
defparam \SAFE_REG~2 .modeMux = 1'b0;
defparam \SAFE_REG~2 .FeedbackMux = 1'b0;
defparam \SAFE_REG~2 .ShiftMux = 1'b0;
defparam \SAFE_REG~2 .BypassEn = 1'b0;
defparam \SAFE_REG~2 .CarryEnb = 1'b1;

alta_slice \SAFE_REG~3 (
	.A(\SAFE_REG~1_combout ),
	.B(vcc),
	.C(\SAFE_REG~2_combout ),
	.D(\DATA[0]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\SAFE_REG~3_combout ),
	.Cout(),
	.Q());
defparam \SAFE_REG~3 .coord_x = 4;
defparam \SAFE_REG~3 .coord_y = 3;
defparam \SAFE_REG~3 .coord_z = 1;
defparam \SAFE_REG~3 .mask = 16'hA000;
defparam \SAFE_REG~3 .modeMux = 1'b0;
defparam \SAFE_REG~3 .FeedbackMux = 1'b0;
defparam \SAFE_REG~3 .ShiftMux = 1'b0;
defparam \SAFE_REG~3 .BypassEn = 1'b0;
defparam \SAFE_REG~3 .CarryEnb = 1'b1;

alta_io \SDET~input (
	.datain(gnd),
	.oe(gnd),
	.padio(SDET),
	.combout(\SDET~input_o ));
defparam \SDET~input .coord_x = 7;
defparam \SDET~input .coord_y = 1;
defparam \SDET~input .coord_z = 3;
defparam \SDET~input .PRG_DELAYB = 1'b1;
defparam \SDET~input .RX_SEL = 1'b0;
defparam \SDET~input .PDCNTL = 2'b11;
defparam \SDET~input .NDCNTL = 2'b11;
defparam \SDET~input .PRG_SLR = 1'b0;
defparam \SDET~input .CFG_KEEP = 2'b00;
defparam \SDET~input .PU = 4'b0000;

alta_io \STDBY~input (
	.datain(gnd),
	.oe(gnd),
	.padio(STDBY),
	.combout(\STDBY~input_o ));
defparam \STDBY~input .coord_x = 7;
defparam \STDBY~input .coord_y = 1;
defparam \STDBY~input .coord_z = 4;
defparam \STDBY~input .PRG_DELAYB = 1'b1;
defparam \STDBY~input .RX_SEL = 1'b0;
defparam \STDBY~input .PDCNTL = 2'b11;
defparam \STDBY~input .NDCNTL = 2'b11;
defparam \STDBY~input .PRG_SLR = 1'b0;
defparam \STDBY~input .CFG_KEEP = 2'b00;
defparam \STDBY~input .PU = 4'b0000;

alta_slice \Selector0~0 (
	.A(\Selector3~0_combout ),
	.B(\ADDR[2]~input_o ),
	.C(\ADDR[6]~input_o ),
	.D(\ADDR[7]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector0~0_combout ),
	.Cout(),
	.Q());
defparam \Selector0~0 .coord_x = 2;
defparam \Selector0~0 .coord_y = 2;
defparam \Selector0~0 .coord_z = 8;
defparam \Selector0~0 .mask = 16'h70F0;
defparam \Selector0~0 .modeMux = 1'b0;
defparam \Selector0~0 .FeedbackMux = 1'b0;
defparam \Selector0~0 .ShiftMux = 1'b0;
defparam \Selector0~0 .BypassEn = 1'b0;
defparam \Selector0~0 .CarryEnb = 1'b1;

alta_slice \Selector0~1 (
	.A(\ADDR[0]~input_o ),
	.B(\ADDR[1]~input_o ),
	.C(\ADDR[2]~input_o ),
	.D(BEEP_REG[7]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector0~1_combout ),
	.Cout(),
	.Q());
defparam \Selector0~1 .coord_x = 4;
defparam \Selector0~1 .coord_y = 2;
defparam \Selector0~1 .coord_z = 6;
defparam \Selector0~1 .mask = 16'hF0E0;
defparam \Selector0~1 .modeMux = 1'b0;
defparam \Selector0~1 .FeedbackMux = 1'b0;
defparam \Selector0~1 .ShiftMux = 1'b0;
defparam \Selector0~1 .BypassEn = 1'b0;
defparam \Selector0~1 .CarryEnb = 1'b1;

alta_slice \Selector0~2 (
	.A(\ki_san|DATA [7]),
	.B(\ADDR[1]~input_o ),
	.C(\SDET~input_o ),
	.D(\ADDR[0]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector0~2_combout ),
	.Cout(),
	.Q());
defparam \Selector0~2 .coord_x = 5;
defparam \Selector0~2 .coord_y = 2;
defparam \Selector0~2 .coord_z = 1;
defparam \Selector0~2 .mask = 16'hE2CC;
defparam \Selector0~2 .modeMux = 1'b0;
defparam \Selector0~2 .FeedbackMux = 1'b0;
defparam \Selector0~2 .ShiftMux = 1'b0;
defparam \Selector0~2 .BypassEn = 1'b0;
defparam \Selector0~2 .CarryEnb = 1'b1;

alta_slice \Selector0~3 (
	.A(\ki_san|DATA [15]),
	.B(\Selector0~2_combout ),
	.C(\LCD_RST~reg0_q ),
	.D(\ADDR[0]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector0~3_combout ),
	.Cout(),
	.Q());
defparam \Selector0~3 .coord_x = 5;
defparam \Selector0~3 .coord_y = 2;
defparam \Selector0~3 .coord_z = 3;
defparam \Selector0~3 .mask = 16'hCC8B;
defparam \Selector0~3 .modeMux = 1'b0;
defparam \Selector0~3 .FeedbackMux = 1'b0;
defparam \Selector0~3 .ShiftMux = 1'b0;
defparam \Selector0~3 .BypassEn = 1'b0;
defparam \Selector0~3 .CarryEnb = 1'b1;

alta_slice \Selector0~4 (
	.A(\Selector0~1_combout ),
	.B(\Decoder0~3_combout ),
	.C(\Selector0~3_combout ),
	.D(\ADDR[2]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector0~4_combout ),
	.Cout(),
	.Q());
defparam \Selector0~4 .coord_x = 4;
defparam \Selector0~4 .coord_y = 2;
defparam \Selector0~4 .coord_z = 0;
defparam \Selector0~4 .mask = 16'hBBFB;
defparam \Selector0~4 .modeMux = 1'b0;
defparam \Selector0~4 .FeedbackMux = 1'b0;
defparam \Selector0~4 .ShiftMux = 1'b0;
defparam \Selector0~4 .BypassEn = 1'b0;
defparam \Selector0~4 .CarryEnb = 1'b1;

alta_slice \Selector1~1 (
	.A(\DATA_BUF[3]~2_combout ),
	.B(\Selector1~0_combout ),
	.C(\DATA_BUF[3]~3_combout ),
	.D(BEEP_REG[6]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector1~1_combout ),
	.Cout(),
	.Q());
defparam \Selector1~1 .coord_x = 3;
defparam \Selector1~1 .coord_y = 2;
defparam \Selector1~1 .coord_z = 1;
defparam \Selector1~1 .mask = 16'hEA4A;
defparam \Selector1~1 .modeMux = 1'b0;
defparam \Selector1~1 .FeedbackMux = 1'b0;
defparam \Selector1~1 .ShiftMux = 1'b0;
defparam \Selector1~1 .BypassEn = 1'b0;
defparam \Selector1~1 .CarryEnb = 1'b1;

alta_slice \Selector1~2 (
	.A(\Selector1~1_combout ),
	.B(\DATA_BUF[3]~1_combout ),
	.C(\STDBY~input_o ),
	.D(\ki_san|DATA [14]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector1~2_combout ),
	.Cout(),
	.Q());
defparam \Selector1~2 .coord_x = 3;
defparam \Selector1~2 .coord_y = 2;
defparam \Selector1~2 .coord_z = 12;
defparam \Selector1~2 .mask = 16'hE6A2;
defparam \Selector1~2 .modeMux = 1'b0;
defparam \Selector1~2 .FeedbackMux = 1'b0;
defparam \Selector1~2 .ShiftMux = 1'b0;
defparam \Selector1~2 .BypassEn = 1'b0;
defparam \Selector1~2 .CarryEnb = 1'b1;

alta_slice \Selector2~0 (
	.A(\DATA_BUF[6]~0_combout ),
	.B(\DIV_REG[4]~0_combout ),
	.C(\Selector3~0_combout ),
	.D(\ADDR[7]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector2~0_combout ),
	.Cout(),
	.Q());
defparam \Selector2~0 .coord_x = 2;
defparam \Selector2~0 .coord_y = 2;
defparam \Selector2~0 .coord_z = 10;
defparam \Selector2~0 .mask = 16'h1555;
defparam \Selector2~0 .modeMux = 1'b0;
defparam \Selector2~0 .FeedbackMux = 1'b0;
defparam \Selector2~0 .ShiftMux = 1'b0;
defparam \Selector2~0 .BypassEn = 1'b0;
defparam \Selector2~0 .CarryEnb = 1'b1;

alta_slice \Selector2~2 (
	.A(\Selector2~1_combout ),
	.B(BEEP_REG[5]),
	.C(\DATA_BUF[3]~2_combout ),
	.D(\DATA_BUF[3]~3_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector2~2_combout ),
	.Cout(),
	.Q());
defparam \Selector2~2 .coord_x = 3;
defparam \Selector2~2 .coord_y = 2;
defparam \Selector2~2 .coord_z = 3;
defparam \Selector2~2 .mask = 16'hCAF0;
defparam \Selector2~2 .modeMux = 1'b0;
defparam \Selector2~2 .FeedbackMux = 1'b0;
defparam \Selector2~2 .ShiftMux = 1'b0;
defparam \Selector2~2 .BypassEn = 1'b0;
defparam \Selector2~2 .CarryEnb = 1'b1;

alta_slice \Selector2~3 (
	.A(\CHRG~input_o ),
	.B(\Selector2~2_combout ),
	.C(\ki_san|DATA [13]),
	.D(\DATA_BUF[3]~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector2~3_combout ),
	.Cout(),
	.Q());
defparam \Selector2~3 .coord_x = 3;
defparam \Selector2~3 .coord_y = 2;
defparam \Selector2~3 .coord_z = 0;
defparam \Selector2~3 .mask = 16'hB8CC;
defparam \Selector2~3 .modeMux = 1'b0;
defparam \Selector2~3 .FeedbackMux = 1'b0;
defparam \Selector2~3 .ShiftMux = 1'b0;
defparam \Selector2~3 .BypassEn = 1'b0;
defparam \Selector2~3 .CarryEnb = 1'b1;

alta_slice \Selector3~0 (
	.A(\ADDR[3]~input_o ),
	.B(\ADDR[5]~input_o ),
	.C(\ADDR[1]~input_o ),
	.D(\ADDR[0]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector3~0_combout ),
	.Cout(),
	.Q());
defparam \Selector3~0 .coord_x = 1;
defparam \Selector3~0 .coord_y = 2;
defparam \Selector3~0 .coord_z = 15;
defparam \Selector3~0 .mask = 16'h0080;
defparam \Selector3~0 .modeMux = 1'b0;
defparam \Selector3~0 .FeedbackMux = 1'b0;
defparam \Selector3~0 .ShiftMux = 1'b0;
defparam \Selector3~0 .BypassEn = 1'b0;
defparam \Selector3~0 .CarryEnb = 1'b1;

alta_slice \Selector3~1 (
	.A(\Selector3~0_combout ),
	.B(DIV_REG[4]),
	.C(\ADDR[2]~input_o ),
	.D(\ADDR[7]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector3~1_combout ),
	.Cout(),
	.Q());
defparam \Selector3~1 .coord_x = 1;
defparam \Selector3~1 .coord_y = 3;
defparam \Selector3~1 .coord_z = 14;
defparam \Selector3~1 .mask = 16'h7FFF;
defparam \Selector3~1 .modeMux = 1'b0;
defparam \Selector3~1 .FeedbackMux = 1'b0;
defparam \Selector3~1 .ShiftMux = 1'b0;
defparam \Selector3~1 .BypassEn = 1'b0;
defparam \Selector3~1 .CarryEnb = 1'b1;

alta_slice \Selector3~2 (
	.A(\ADDR[2]~input_o ),
	.B(BEEP_REG[4]),
	.C(\ADDR[0]~input_o ),
	.D(\ADDR[1]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector3~2_combout ),
	.Cout(),
	.Q());
defparam \Selector3~2 .coord_x = 4;
defparam \Selector3~2 .coord_y = 2;
defparam \Selector3~2 .coord_z = 4;
defparam \Selector3~2 .mask = 16'hAAA8;
defparam \Selector3~2 .modeMux = 1'b0;
defparam \Selector3~2 .FeedbackMux = 1'b0;
defparam \Selector3~2 .ShiftMux = 1'b0;
defparam \Selector3~2 .BypassEn = 1'b0;
defparam \Selector3~2 .CarryEnb = 1'b1;

alta_slice \Selector3~5 (
	.A(vcc),
	.B(\Decoder0~3_combout ),
	.C(\Selector3~2_combout ),
	.D(\Selector3~4_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector3~5_combout ),
	.Cout(),
	.Q());
defparam \Selector3~5 .coord_x = 4;
defparam \Selector3~5 .coord_y = 2;
defparam \Selector3~5 .coord_z = 9;
defparam \Selector3~5 .mask = 16'hFFF3;
defparam \Selector3~5 .modeMux = 1'b0;
defparam \Selector3~5 .FeedbackMux = 1'b0;
defparam \Selector3~5 .ShiftMux = 1'b0;
defparam \Selector3~5 .BypassEn = 1'b0;
defparam \Selector3~5 .CarryEnb = 1'b1;

alta_slice \Selector4~1 (
	.A(\Selector4~0_combout ),
	.B(BEEP_REG[3]),
	.C(\DATA_BUF[3]~2_combout ),
	.D(\DATA_BUF[3]~3_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector4~1_combout ),
	.Cout(),
	.Q());
defparam \Selector4~1 .coord_x = 3;
defparam \Selector4~1 .coord_y = 2;
defparam \Selector4~1 .coord_z = 5;
defparam \Selector4~1 .mask = 16'hC5F0;
defparam \Selector4~1 .modeMux = 1'b0;
defparam \Selector4~1 .FeedbackMux = 1'b0;
defparam \Selector4~1 .ShiftMux = 1'b0;
defparam \Selector4~1 .BypassEn = 1'b0;
defparam \Selector4~1 .CarryEnb = 1'b1;

alta_slice \Selector4~2 (
	.A(\ki_san|DATA [11]),
	.B(\DATA_BUF[3]~1_combout ),
	.C(\ki_san|DATA [19]),
	.D(\Selector4~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector4~2_combout ),
	.Cout(),
	.Q());
defparam \Selector4~2 .coord_x = 3;
defparam \Selector4~2 .coord_y = 2;
defparam \Selector4~2 .coord_z = 14;
defparam \Selector4~2 .mask = 16'hF388;
defparam \Selector4~2 .modeMux = 1'b0;
defparam \Selector4~2 .FeedbackMux = 1'b0;
defparam \Selector4~2 .ShiftMux = 1'b0;
defparam \Selector4~2 .BypassEn = 1'b0;
defparam \Selector4~2 .CarryEnb = 1'b1;

alta_slice \Selector5~0 (
	.A(\ADDR[2]~input_o ),
	.B(\ADDR[1]~input_o ),
	.C(\ADDR[0]~input_o ),
	.D(\ki_san|DATA [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector5~0_combout ),
	.Cout(),
	.Q());
defparam \Selector5~0 .coord_x = 4;
defparam \Selector5~0 .coord_y = 2;
defparam \Selector5~0 .coord_z = 5;
defparam \Selector5~0 .mask = 16'hF8E8;
defparam \Selector5~0 .modeMux = 1'b0;
defparam \Selector5~0 .FeedbackMux = 1'b0;
defparam \Selector5~0 .ShiftMux = 1'b0;
defparam \Selector5~0 .BypassEn = 1'b0;
defparam \Selector5~0 .CarryEnb = 1'b1;

alta_slice \Selector5~1 (
	.A(\Selector5~0_combout ),
	.B(\ADDR[2]~input_o ),
	.C(BEEP_REG[2]),
	.D(\ADDR[4]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector5~1_combout ),
	.Cout(),
	.Q());
defparam \Selector5~1 .coord_x = 3;
defparam \Selector5~1 .coord_y = 2;
defparam \Selector5~1 .coord_z = 10;
defparam \Selector5~1 .mask = 16'hEAFF;
defparam \Selector5~1 .modeMux = 1'b0;
defparam \Selector5~1 .FeedbackMux = 1'b0;
defparam \Selector5~1 .ShiftMux = 1'b0;
defparam \Selector5~1 .BypassEn = 1'b0;
defparam \Selector5~1 .CarryEnb = 1'b1;

alta_slice \Selector5~2 (
	.A(\ki_san|DATA [18]),
	.B(\DATA_BUF[3]~1_combout ),
	.C(\Selector5~1_combout ),
	.D(\ki_san|DATA [10]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector5~2_combout ),
	.Cout(),
	.Q());
defparam \Selector5~2 .coord_x = 3;
defparam \Selector5~2 .coord_y = 2;
defparam \Selector5~2 .coord_z = 11;
defparam \Selector5~2 .mask = 16'hBCB0;
defparam \Selector5~2 .modeMux = 1'b0;
defparam \Selector5~2 .FeedbackMux = 1'b0;
defparam \Selector5~2 .ShiftMux = 1'b0;
defparam \Selector5~2 .BypassEn = 1'b0;
defparam \Selector5~2 .CarryEnb = 1'b1;

alta_slice \Selector6~0 (
	.A(vcc),
	.B(vcc),
	.C(DIV_REG[1]),
	.D(\ADDR[7]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector6~0_combout ),
	.Cout(),
	.Q());
defparam \Selector6~0 .coord_x = 2;
defparam \Selector6~0 .coord_y = 2;
defparam \Selector6~0 .coord_z = 2;
defparam \Selector6~0 .mask = 16'h0F00;
defparam \Selector6~0 .modeMux = 1'b0;
defparam \Selector6~0 .FeedbackMux = 1'b0;
defparam \Selector6~0 .ShiftMux = 1'b0;
defparam \Selector6~0 .BypassEn = 1'b0;
defparam \Selector6~0 .CarryEnb = 1'b1;

alta_slice \Selector6~2 (
	.A(\ADDR[0]~input_o ),
	.B(\ki_san|DATA [9]),
	.C(LED_REG[1]),
	.D(\Selector6~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector6~2_combout ),
	.Cout(),
	.Q());
defparam \Selector6~2 .coord_x = 5;
defparam \Selector6~2 .coord_y = 2;
defparam \Selector6~2 .coord_z = 9;
defparam \Selector6~2 .mask = 16'hEE05;
defparam \Selector6~2 .modeMux = 1'b0;
defparam \Selector6~2 .FeedbackMux = 1'b0;
defparam \Selector6~2 .ShiftMux = 1'b0;
defparam \Selector6~2 .BypassEn = 1'b0;
defparam \Selector6~2 .CarryEnb = 1'b1;

alta_slice \Selector6~3 (
	.A(BEEP_REG[1]),
	.B(\ADDR[2]~input_o ),
	.C(\Selector6~2_combout ),
	.D(\ADDR[7]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector6~3_combout ),
	.Cout(),
	.Q());
defparam \Selector6~3 .coord_x = 2;
defparam \Selector6~3 .coord_y = 2;
defparam \Selector6~3 .coord_z = 5;
defparam \Selector6~3 .mask = 16'h00B8;
defparam \Selector6~3 .modeMux = 1'b0;
defparam \Selector6~3 .FeedbackMux = 1'b0;
defparam \Selector6~3 .ShiftMux = 1'b0;
defparam \Selector6~3 .BypassEn = 1'b0;
defparam \Selector6~3 .CarryEnb = 1'b1;

alta_slice \Selector7~0 (
	.A(vcc),
	.B(vcc),
	.C(DIV_REG[0]),
	.D(\ADDR[7]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector7~0_combout ),
	.Cout(),
	.Q());
defparam \Selector7~0 .coord_x = 2;
defparam \Selector7~0 .coord_y = 2;
defparam \Selector7~0 .coord_z = 4;
defparam \Selector7~0 .mask = 16'h0F00;
defparam \Selector7~0 .modeMux = 1'b0;
defparam \Selector7~0 .FeedbackMux = 1'b0;
defparam \Selector7~0 .ShiftMux = 1'b0;
defparam \Selector7~0 .BypassEn = 1'b0;
defparam \Selector7~0 .CarryEnb = 1'b1;

alta_slice \Selector7~2 (
	.A(\ki_san|DATA [8]),
	.B(\Selector7~1_combout ),
	.C(LED_REG[0]),
	.D(\ADDR[0]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector7~2_combout ),
	.Cout(),
	.Q());
defparam \Selector7~2 .coord_x = 5;
defparam \Selector7~2 .coord_y = 2;
defparam \Selector7~2 .coord_z = 7;
defparam \Selector7~2 .mask = 16'hCC8B;
defparam \Selector7~2 .modeMux = 1'b0;
defparam \Selector7~2 .FeedbackMux = 1'b0;
defparam \Selector7~2 .ShiftMux = 1'b0;
defparam \Selector7~2 .BypassEn = 1'b0;
defparam \Selector7~2 .CarryEnb = 1'b1;

alta_slice \Selector7~3 (
	.A(\ADDR[7]~input_o ),
	.B(\ADDR[2]~input_o ),
	.C(BEEP_REG[0]),
	.D(\Selector7~2_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector7~3_combout ),
	.Cout(),
	.Q());
defparam \Selector7~3 .coord_x = 2;
defparam \Selector7~3 .coord_y = 2;
defparam \Selector7~3 .coord_z = 14;
defparam \Selector7~3 .mask = 16'h5140;
defparam \Selector7~3 .modeMux = 1'b0;
defparam \Selector7~3 .FeedbackMux = 1'b0;
defparam \Selector7~3 .ShiftMux = 1'b0;
defparam \Selector7~3 .BypassEn = 1'b0;
defparam \Selector7~3 .CarryEnb = 1'b1;

alta_slice \Selector7~4 (
	.A(\Decoder0~0_combout ),
	.B(\ADDR[4]~input_o ),
	.C(\DATA_BUF[6]~0_combout ),
	.D(\ADDR[2]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\Selector7~4_combout ),
	.Cout(),
	.Q());
defparam \Selector7~4 .coord_x = 2;
defparam \Selector7~4 .coord_y = 2;
defparam \Selector7~4 .coord_z = 0;
defparam \Selector7~4 .mask = 16'h80C0;
defparam \Selector7~4 .modeMux = 1'b0;
defparam \Selector7~4 .FeedbackMux = 1'b0;
defparam \Selector7~4 .ShiftMux = 1'b0;
defparam \Selector7~4 .BypassEn = 1'b0;
defparam \Selector7~4 .CarryEnb = 1'b1;

alta_io \WAIT~output (
	.datain(vcc),
	.oe(vcc),
	.padio(WAIT),
	.combout());
defparam \WAIT~output .coord_x = 2;
defparam \WAIT~output .coord_y = 4;
defparam \WAIT~output .coord_z = 4;
defparam \WAIT~output .PRG_DELAYB = 1'b1;
defparam \WAIT~output .RX_SEL = 1'b0;
defparam \WAIT~output .PDCNTL = 2'b11;
defparam \WAIT~output .NDCNTL = 2'b11;
defparam \WAIT~output .PRG_SLR = 1'b0;
defparam \WAIT~output .CFG_KEEP = 2'b00;
defparam \WAIT~output .PU = 4'b0000;

alta_io \WR~input (
	.datain(gnd),
	.oe(gnd),
	.padio(WR),
	.combout(\WR~input_o ));
defparam \WR~input .coord_x = 2;
defparam \WR~input .coord_y = 4;
defparam \WR~input .coord_z = 0;
defparam \WR~input .PRG_DELAYB = 1'b1;
defparam \WR~input .RX_SEL = 1'b0;
defparam \WR~input .PDCNTL = 2'b11;
defparam \WR~input .NDCNTL = 2'b11;
defparam \WR~input .PRG_SLR = 1'b0;
defparam \WR~input .CFG_KEEP = 2'b00;
defparam \WR~input .PU = 4'b0000;

alta_asyncctrl asyncreset_ctrl_X1_Y24_N0(
	.Din(\DBG~inputclkctrl_outclk ),
	.Dout(\DBG~inputclkctrl_outclk__AsyncReset_X1_Y24_INV ));
defparam asyncreset_ctrl_X1_Y24_N0.coord_x = 1;
defparam asyncreset_ctrl_X1_Y24_N0.coord_y = 3;
defparam asyncreset_ctrl_X1_Y24_N0.coord_z = 0;
defparam asyncreset_ctrl_X1_Y24_N0.AsyncCtrlMux = 2'b11;

alta_asyncctrl asyncreset_ctrl_X1_Y28_N0(
	.Din(\DBG~inputclkctrl_outclk ),
	.Dout(\DBG~inputclkctrl_outclk__AsyncReset_X1_Y28_INV ));
defparam asyncreset_ctrl_X1_Y28_N0.coord_x = 1;
defparam asyncreset_ctrl_X1_Y28_N0.coord_y = 2;
defparam asyncreset_ctrl_X1_Y28_N0.coord_z = 0;
defparam asyncreset_ctrl_X1_Y28_N0.AsyncCtrlMux = 2'b11;

alta_asyncctrl asyncreset_ctrl_X1_Y30_N0(
	.Din(\DBG~inputclkctrl_outclk ),
	.Dout(\DBG~inputclkctrl_outclk__AsyncReset_X1_Y30_INV ));
defparam asyncreset_ctrl_X1_Y30_N0.coord_x = 5;
defparam asyncreset_ctrl_X1_Y30_N0.coord_y = 3;
defparam asyncreset_ctrl_X1_Y30_N0.coord_z = 0;
defparam asyncreset_ctrl_X1_Y30_N0.AsyncCtrlMux = 2'b11;

alta_asyncctrl asyncreset_ctrl_X1_Y30_N1(
	.Din(),
	.Dout(AsyncReset_X1_Y30_GND));
defparam asyncreset_ctrl_X1_Y30_N1.coord_x = 5;
defparam asyncreset_ctrl_X1_Y30_N1.coord_y = 3;
defparam asyncreset_ctrl_X1_Y30_N1.coord_z = 1;
defparam asyncreset_ctrl_X1_Y30_N1.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X2_Y24_N0(
	.Din(\DBG~inputclkctrl_outclk ),
	.Dout(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y24_INV ));
defparam asyncreset_ctrl_X2_Y24_N0.coord_x = 2;
defparam asyncreset_ctrl_X2_Y24_N0.coord_y = 3;
defparam asyncreset_ctrl_X2_Y24_N0.coord_z = 0;
defparam asyncreset_ctrl_X2_Y24_N0.AsyncCtrlMux = 2'b11;

alta_asyncctrl asyncreset_ctrl_X2_Y27_N0(
	.Din(),
	.Dout(AsyncReset_X2_Y27_GND));
defparam asyncreset_ctrl_X2_Y27_N0.coord_x = 3;
defparam asyncreset_ctrl_X2_Y27_N0.coord_y = 1;
defparam asyncreset_ctrl_X2_Y27_N0.coord_z = 0;
defparam asyncreset_ctrl_X2_Y27_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X2_Y28_N0(
	.Din(\DBG~inputclkctrl_outclk ),
	.Dout(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y28_INV ));
defparam asyncreset_ctrl_X2_Y28_N0.coord_x = 2;
defparam asyncreset_ctrl_X2_Y28_N0.coord_y = 2;
defparam asyncreset_ctrl_X2_Y28_N0.coord_z = 0;
defparam asyncreset_ctrl_X2_Y28_N0.AsyncCtrlMux = 2'b11;

alta_asyncctrl asyncreset_ctrl_X2_Y30_N0(
	.Din(\DBG~inputclkctrl_outclk ),
	.Dout(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y30_INV ));
defparam asyncreset_ctrl_X2_Y30_N0.coord_x = 4;
defparam asyncreset_ctrl_X2_Y30_N0.coord_y = 3;
defparam asyncreset_ctrl_X2_Y30_N0.coord_z = 0;
defparam asyncreset_ctrl_X2_Y30_N0.AsyncCtrlMux = 2'b11;

alta_asyncctrl asyncreset_ctrl_X3_Y27_N0(
	.Din(\DBG~inputclkctrl_outclk ),
	.Dout(\DBG~inputclkctrl_outclk__AsyncReset_X3_Y27_INV ));
defparam asyncreset_ctrl_X3_Y27_N0.coord_x = 6;
defparam asyncreset_ctrl_X3_Y27_N0.coord_y = 1;
defparam asyncreset_ctrl_X3_Y27_N0.coord_z = 0;
defparam asyncreset_ctrl_X3_Y27_N0.AsyncCtrlMux = 2'b11;

alta_asyncctrl asyncreset_ctrl_X3_Y27_N1(
	.Din(),
	.Dout(AsyncReset_X3_Y27_GND));
defparam asyncreset_ctrl_X3_Y27_N1.coord_x = 6;
defparam asyncreset_ctrl_X3_Y27_N1.coord_y = 1;
defparam asyncreset_ctrl_X3_Y27_N1.coord_z = 1;
defparam asyncreset_ctrl_X3_Y27_N1.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X3_Y28_N0(
	.Din(\DBG~inputclkctrl_outclk ),
	.Dout(\DBG~inputclkctrl_outclk__AsyncReset_X3_Y28_INV ));
defparam asyncreset_ctrl_X3_Y28_N0.coord_x = 3;
defparam asyncreset_ctrl_X3_Y28_N0.coord_y = 2;
defparam asyncreset_ctrl_X3_Y28_N0.coord_z = 0;
defparam asyncreset_ctrl_X3_Y28_N0.AsyncCtrlMux = 2'b11;

alta_asyncctrl asyncreset_ctrl_X3_Y28_N1(
	.Din(),
	.Dout(AsyncReset_X3_Y28_GND));
defparam asyncreset_ctrl_X3_Y28_N1.coord_x = 3;
defparam asyncreset_ctrl_X3_Y28_N1.coord_y = 2;
defparam asyncreset_ctrl_X3_Y28_N1.coord_z = 1;
defparam asyncreset_ctrl_X3_Y28_N1.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X4_Y27_N0(
	.Din(\DBG~inputclkctrl_outclk ),
	.Dout(\DBG~inputclkctrl_outclk__AsyncReset_X4_Y27_INV ));
defparam asyncreset_ctrl_X4_Y27_N0.coord_x = 5;
defparam asyncreset_ctrl_X4_Y27_N0.coord_y = 1;
defparam asyncreset_ctrl_X4_Y27_N0.coord_z = 0;
defparam asyncreset_ctrl_X4_Y27_N0.AsyncCtrlMux = 2'b11;

alta_asyncctrl asyncreset_ctrl_X4_Y28_N0(
	.Din(),
	.Dout(AsyncReset_X4_Y28_GND));
defparam asyncreset_ctrl_X4_Y28_N0.coord_x = 4;
defparam asyncreset_ctrl_X4_Y28_N0.coord_y = 2;
defparam asyncreset_ctrl_X4_Y28_N0.coord_z = 0;
defparam asyncreset_ctrl_X4_Y28_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X4_Y28_N1(
	.Din(\DBG~inputclkctrl_outclk ),
	.Dout(\DBG~inputclkctrl_outclk__AsyncReset_X4_Y28_INV ));
defparam asyncreset_ctrl_X4_Y28_N1.coord_x = 4;
defparam asyncreset_ctrl_X4_Y28_N1.coord_y = 2;
defparam asyncreset_ctrl_X4_Y28_N1.coord_z = 1;
defparam asyncreset_ctrl_X4_Y28_N1.AsyncCtrlMux = 2'b11;

alta_asyncctrl asyncreset_ctrl_X5_Y27_N0(
	.Din(),
	.Dout(AsyncReset_X5_Y27_GND));
defparam asyncreset_ctrl_X5_Y27_N0.coord_x = 4;
defparam asyncreset_ctrl_X5_Y27_N0.coord_y = 1;
defparam asyncreset_ctrl_X5_Y27_N0.coord_z = 0;
defparam asyncreset_ctrl_X5_Y27_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X5_Y27_N1(
	.Din(\DBG~inputclkctrl_outclk ),
	.Dout(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ));
defparam asyncreset_ctrl_X5_Y27_N1.coord_x = 4;
defparam asyncreset_ctrl_X5_Y27_N1.coord_y = 1;
defparam asyncreset_ctrl_X5_Y27_N1.coord_z = 1;
defparam asyncreset_ctrl_X5_Y27_N1.AsyncCtrlMux = 2'b11;

alta_asyncctrl asyncreset_ctrl_X5_Y28_N0(
	.Din(),
	.Dout(AsyncReset_X5_Y28_GND));
defparam asyncreset_ctrl_X5_Y28_N0.coord_x = 5;
defparam asyncreset_ctrl_X5_Y28_N0.coord_y = 2;
defparam asyncreset_ctrl_X5_Y28_N0.coord_z = 0;
defparam asyncreset_ctrl_X5_Y28_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X5_Y28_N1(
	.Din(\DBG~inputclkctrl_outclk ),
	.Dout(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y28_INV ));
defparam asyncreset_ctrl_X5_Y28_N1.coord_x = 5;
defparam asyncreset_ctrl_X5_Y28_N1.coord_y = 2;
defparam asyncreset_ctrl_X5_Y28_N1.coord_z = 1;
defparam asyncreset_ctrl_X5_Y28_N1.AsyncCtrlMux = 2'b11;

alta_slice \beep_beep|CLK_DIV_2 (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\beep_beep|CLK_DIV_2~q ),
	.Clk(\ki_san|Equal3~combout_X3_Y27_SIG_VCC ),
	.AsyncReset(AsyncReset_X3_Y27_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\beep_beep|CLK_DIV_2~0_combout ),
	.Cout(),
	.Q(\beep_beep|CLK_DIV_2~q ));
defparam \beep_beep|CLK_DIV_2 .coord_x = 6;
defparam \beep_beep|CLK_DIV_2 .coord_y = 1;
defparam \beep_beep|CLK_DIV_2 .coord_z = 15;
defparam \beep_beep|CLK_DIV_2 .mask = 16'h0F0F;
defparam \beep_beep|CLK_DIV_2 .modeMux = 1'b0;
defparam \beep_beep|CLK_DIV_2 .FeedbackMux = 1'b1;
defparam \beep_beep|CLK_DIV_2 .ShiftMux = 1'b0;
defparam \beep_beep|CLK_DIV_2 .BypassEn = 1'b0;
defparam \beep_beep|CLK_DIV_2 .CarryEnb = 1'b1;

alta_io_gclk \beep_beep|CLK_DIV_2~clkctrl (
	.inclk(\beep_beep|CLK_DIV_2~q ),
	.outclk(\beep_beep|CLK_DIV_2~clkctrl_outclk ));
defparam \beep_beep|CLK_DIV_2~clkctrl .coord_x = 7;
defparam \beep_beep|CLK_DIV_2~clkctrl .coord_y = 2;
defparam \beep_beep|CLK_DIV_2~clkctrl .coord_z = 1;

alta_slice \beep_beep|CNT[0] (
	.A(vcc),
	.B(\beep_beep|CNT [0]),
	.C(BEEP_REG[0]),
	.D(vcc),
	.Cin(),
	.Qin(\beep_beep|CNT [0]),
	.Clk(\beep_beep|CLK_DIV_2~clkctrl_outclk_X1_Y30_SIG_VCC ),
	.AsyncReset(AsyncReset_X1_Y30_GND),
	.SyncReset(SyncReset_X1_Y30_GND),
	.ShiftData(),
	.SyncLoad(\beep_beep|CNT~10_combout__SyncLoad_X1_Y30_SIG ),
	.LutOut(\beep_beep|CNT[0]~8_combout ),
	.Cout(\beep_beep|CNT[0]~9 ),
	.Q(\beep_beep|CNT [0]));
defparam \beep_beep|CNT[0] .coord_x = 5;
defparam \beep_beep|CNT[0] .coord_y = 3;
defparam \beep_beep|CNT[0] .coord_z = 4;
defparam \beep_beep|CNT[0] .mask = 16'h33CC;
defparam \beep_beep|CNT[0] .modeMux = 1'b0;
defparam \beep_beep|CNT[0] .FeedbackMux = 1'b0;
defparam \beep_beep|CNT[0] .ShiftMux = 1'b0;
defparam \beep_beep|CNT[0] .BypassEn = 1'b1;
defparam \beep_beep|CNT[0] .CarryEnb = 1'b0;

alta_slice \beep_beep|CNT[1] (
	.A(vcc),
	.B(\beep_beep|CNT [1]),
	.C(BEEP_REG[1]),
	.D(vcc),
	.Cin(\beep_beep|CNT[0]~9 ),
	.Qin(\beep_beep|CNT [1]),
	.Clk(\beep_beep|CLK_DIV_2~clkctrl_outclk_X1_Y30_SIG_VCC ),
	.AsyncReset(AsyncReset_X1_Y30_GND),
	.SyncReset(SyncReset_X1_Y30_GND),
	.ShiftData(),
	.SyncLoad(\beep_beep|CNT~10_combout__SyncLoad_X1_Y30_SIG ),
	.LutOut(\beep_beep|CNT[1]~11_combout ),
	.Cout(\beep_beep|CNT[1]~12 ),
	.Q(\beep_beep|CNT [1]));
defparam \beep_beep|CNT[1] .coord_x = 5;
defparam \beep_beep|CNT[1] .coord_y = 3;
defparam \beep_beep|CNT[1] .coord_z = 5;
defparam \beep_beep|CNT[1] .mask = 16'hC303;
defparam \beep_beep|CNT[1] .modeMux = 1'b1;
defparam \beep_beep|CNT[1] .FeedbackMux = 1'b0;
defparam \beep_beep|CNT[1] .ShiftMux = 1'b0;
defparam \beep_beep|CNT[1] .BypassEn = 1'b1;
defparam \beep_beep|CNT[1] .CarryEnb = 1'b0;

alta_slice \beep_beep|CNT[2] (
	.A(vcc),
	.B(\beep_beep|CNT [2]),
	.C(BEEP_REG[2]),
	.D(vcc),
	.Cin(\beep_beep|CNT[1]~12 ),
	.Qin(\beep_beep|CNT [2]),
	.Clk(\beep_beep|CLK_DIV_2~clkctrl_outclk_X1_Y30_SIG_VCC ),
	.AsyncReset(AsyncReset_X1_Y30_GND),
	.SyncReset(SyncReset_X1_Y30_GND),
	.ShiftData(),
	.SyncLoad(\beep_beep|CNT~10_combout__SyncLoad_X1_Y30_SIG ),
	.LutOut(\beep_beep|CNT[2]~13_combout ),
	.Cout(\beep_beep|CNT[2]~14 ),
	.Q(\beep_beep|CNT [2]));
defparam \beep_beep|CNT[2] .coord_x = 5;
defparam \beep_beep|CNT[2] .coord_y = 3;
defparam \beep_beep|CNT[2] .coord_z = 6;
defparam \beep_beep|CNT[2] .mask = 16'h3CCF;
defparam \beep_beep|CNT[2] .modeMux = 1'b1;
defparam \beep_beep|CNT[2] .FeedbackMux = 1'b0;
defparam \beep_beep|CNT[2] .ShiftMux = 1'b0;
defparam \beep_beep|CNT[2] .BypassEn = 1'b1;
defparam \beep_beep|CNT[2] .CarryEnb = 1'b0;

alta_slice \beep_beep|CNT[3] (
	.A(vcc),
	.B(\beep_beep|CNT [3]),
	.C(BEEP_REG[3]),
	.D(vcc),
	.Cin(\beep_beep|CNT[2]~14 ),
	.Qin(\beep_beep|CNT [3]),
	.Clk(\beep_beep|CLK_DIV_2~clkctrl_outclk_X1_Y30_SIG_VCC ),
	.AsyncReset(AsyncReset_X1_Y30_GND),
	.SyncReset(SyncReset_X1_Y30_GND),
	.ShiftData(),
	.SyncLoad(\beep_beep|CNT~10_combout__SyncLoad_X1_Y30_SIG ),
	.LutOut(\beep_beep|CNT[3]~15_combout ),
	.Cout(\beep_beep|CNT[3]~16 ),
	.Q(\beep_beep|CNT [3]));
defparam \beep_beep|CNT[3] .coord_x = 5;
defparam \beep_beep|CNT[3] .coord_y = 3;
defparam \beep_beep|CNT[3] .coord_z = 7;
defparam \beep_beep|CNT[3] .mask = 16'hC303;
defparam \beep_beep|CNT[3] .modeMux = 1'b1;
defparam \beep_beep|CNT[3] .FeedbackMux = 1'b0;
defparam \beep_beep|CNT[3] .ShiftMux = 1'b0;
defparam \beep_beep|CNT[3] .BypassEn = 1'b1;
defparam \beep_beep|CNT[3] .CarryEnb = 1'b0;

alta_slice \beep_beep|CNT[4] (
	.A(vcc),
	.B(\beep_beep|CNT [4]),
	.C(BEEP_REG[4]),
	.D(vcc),
	.Cin(\beep_beep|CNT[3]~16 ),
	.Qin(\beep_beep|CNT [4]),
	.Clk(\beep_beep|CLK_DIV_2~clkctrl_outclk_X1_Y30_SIG_VCC ),
	.AsyncReset(AsyncReset_X1_Y30_GND),
	.SyncReset(SyncReset_X1_Y30_GND),
	.ShiftData(),
	.SyncLoad(\beep_beep|CNT~10_combout__SyncLoad_X1_Y30_SIG ),
	.LutOut(\beep_beep|CNT[4]~17_combout ),
	.Cout(\beep_beep|CNT[4]~18 ),
	.Q(\beep_beep|CNT [4]));
defparam \beep_beep|CNT[4] .coord_x = 5;
defparam \beep_beep|CNT[4] .coord_y = 3;
defparam \beep_beep|CNT[4] .coord_z = 8;
defparam \beep_beep|CNT[4] .mask = 16'h3CCF;
defparam \beep_beep|CNT[4] .modeMux = 1'b1;
defparam \beep_beep|CNT[4] .FeedbackMux = 1'b0;
defparam \beep_beep|CNT[4] .ShiftMux = 1'b0;
defparam \beep_beep|CNT[4] .BypassEn = 1'b1;
defparam \beep_beep|CNT[4] .CarryEnb = 1'b0;

alta_slice \beep_beep|CNT[5] (
	.A(vcc),
	.B(\beep_beep|CNT [5]),
	.C(BEEP_REG[5]),
	.D(vcc),
	.Cin(\beep_beep|CNT[4]~18 ),
	.Qin(\beep_beep|CNT [5]),
	.Clk(\beep_beep|CLK_DIV_2~clkctrl_outclk_X1_Y30_SIG_VCC ),
	.AsyncReset(AsyncReset_X1_Y30_GND),
	.SyncReset(SyncReset_X1_Y30_GND),
	.ShiftData(),
	.SyncLoad(\beep_beep|CNT~10_combout__SyncLoad_X1_Y30_SIG ),
	.LutOut(\beep_beep|CNT[5]~19_combout ),
	.Cout(\beep_beep|CNT[5]~20 ),
	.Q(\beep_beep|CNT [5]));
defparam \beep_beep|CNT[5] .coord_x = 5;
defparam \beep_beep|CNT[5] .coord_y = 3;
defparam \beep_beep|CNT[5] .coord_z = 9;
defparam \beep_beep|CNT[5] .mask = 16'hC303;
defparam \beep_beep|CNT[5] .modeMux = 1'b1;
defparam \beep_beep|CNT[5] .FeedbackMux = 1'b0;
defparam \beep_beep|CNT[5] .ShiftMux = 1'b0;
defparam \beep_beep|CNT[5] .BypassEn = 1'b1;
defparam \beep_beep|CNT[5] .CarryEnb = 1'b0;

alta_slice \beep_beep|CNT[6] (
	.A(vcc),
	.B(\beep_beep|CNT [6]),
	.C(BEEP_REG[6]),
	.D(vcc),
	.Cin(\beep_beep|CNT[5]~20 ),
	.Qin(\beep_beep|CNT [6]),
	.Clk(\beep_beep|CLK_DIV_2~clkctrl_outclk_X1_Y30_SIG_VCC ),
	.AsyncReset(AsyncReset_X1_Y30_GND),
	.SyncReset(SyncReset_X1_Y30_GND),
	.ShiftData(),
	.SyncLoad(\beep_beep|CNT~10_combout__SyncLoad_X1_Y30_SIG ),
	.LutOut(\beep_beep|CNT[6]~21_combout ),
	.Cout(\beep_beep|CNT[6]~22 ),
	.Q(\beep_beep|CNT [6]));
defparam \beep_beep|CNT[6] .coord_x = 5;
defparam \beep_beep|CNT[6] .coord_y = 3;
defparam \beep_beep|CNT[6] .coord_z = 10;
defparam \beep_beep|CNT[6] .mask = 16'h3CCF;
defparam \beep_beep|CNT[6] .modeMux = 1'b1;
defparam \beep_beep|CNT[6] .FeedbackMux = 1'b0;
defparam \beep_beep|CNT[6] .ShiftMux = 1'b0;
defparam \beep_beep|CNT[6] .BypassEn = 1'b1;
defparam \beep_beep|CNT[6] .CarryEnb = 1'b0;

alta_slice \beep_beep|CNT[7] (
	.A(vcc),
	.B(\beep_beep|CNT [7]),
	.C(BEEP_REG[7]),
	.D(vcc),
	.Cin(\beep_beep|CNT[6]~22 ),
	.Qin(\beep_beep|CNT [7]),
	.Clk(\beep_beep|CLK_DIV_2~clkctrl_outclk_X1_Y30_SIG_VCC ),
	.AsyncReset(AsyncReset_X1_Y30_GND),
	.SyncReset(SyncReset_X1_Y30_GND),
	.ShiftData(),
	.SyncLoad(\beep_beep|CNT~10_combout__SyncLoad_X1_Y30_SIG ),
	.LutOut(\beep_beep|CNT[7]~23_combout ),
	.Cout(),
	.Q(\beep_beep|CNT [7]));
defparam \beep_beep|CNT[7] .coord_x = 5;
defparam \beep_beep|CNT[7] .coord_y = 3;
defparam \beep_beep|CNT[7] .coord_z = 11;
defparam \beep_beep|CNT[7] .mask = 16'hC3C3;
defparam \beep_beep|CNT[7] .modeMux = 1'b1;
defparam \beep_beep|CNT[7] .FeedbackMux = 1'b0;
defparam \beep_beep|CNT[7] .ShiftMux = 1'b0;
defparam \beep_beep|CNT[7] .BypassEn = 1'b1;
defparam \beep_beep|CNT[7] .CarryEnb = 1'b1;

alta_slice \beep_beep|CNT~10 (
	.A(\beep_beep|Equal0~0_combout ),
	.B(\beep_beep|Equal0~1_combout ),
	.C(\beep_beep|CNT [0]),
	.D(\DBG~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\beep_beep|CNT~10_combout ),
	.Cout(),
	.Q());
defparam \beep_beep|CNT~10 .coord_x = 5;
defparam \beep_beep|CNT~10 .coord_y = 3;
defparam \beep_beep|CNT~10 .coord_z = 0;
defparam \beep_beep|CNT~10 .mask = 16'h08FF;
defparam \beep_beep|CNT~10 .modeMux = 1'b0;
defparam \beep_beep|CNT~10 .FeedbackMux = 1'b0;
defparam \beep_beep|CNT~10 .ShiftMux = 1'b0;
defparam \beep_beep|CNT~10 .BypassEn = 1'b0;
defparam \beep_beep|CNT~10 .CarryEnb = 1'b1;

alta_slice \beep_beep|Equal0~0 (
	.A(\beep_beep|CNT [2]),
	.B(\beep_beep|CNT [1]),
	.C(\beep_beep|CNT [4]),
	.D(\beep_beep|CNT [3]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\beep_beep|Equal0~0_combout ),
	.Cout(),
	.Q());
defparam \beep_beep|Equal0~0 .coord_x = 5;
defparam \beep_beep|Equal0~0 .coord_y = 3;
defparam \beep_beep|Equal0~0 .coord_z = 14;
defparam \beep_beep|Equal0~0 .mask = 16'h0001;
defparam \beep_beep|Equal0~0 .modeMux = 1'b0;
defparam \beep_beep|Equal0~0 .FeedbackMux = 1'b0;
defparam \beep_beep|Equal0~0 .ShiftMux = 1'b0;
defparam \beep_beep|Equal0~0 .BypassEn = 1'b0;
defparam \beep_beep|Equal0~0 .CarryEnb = 1'b1;

alta_slice \beep_beep|Equal0~1 (
	.A(vcc),
	.B(\beep_beep|CNT [7]),
	.C(\beep_beep|CNT [6]),
	.D(\beep_beep|CNT [5]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\beep_beep|Equal0~1_combout ),
	.Cout(),
	.Q());
defparam \beep_beep|Equal0~1 .coord_x = 5;
defparam \beep_beep|Equal0~1 .coord_y = 3;
defparam \beep_beep|Equal0~1 .coord_z = 1;
defparam \beep_beep|Equal0~1 .mask = 16'h0003;
defparam \beep_beep|Equal0~1 .modeMux = 1'b0;
defparam \beep_beep|Equal0~1 .FeedbackMux = 1'b0;
defparam \beep_beep|Equal0~1 .ShiftMux = 1'b0;
defparam \beep_beep|Equal0~1 .BypassEn = 1'b0;
defparam \beep_beep|Equal0~1 .CarryEnb = 1'b1;

alta_slice \beep_beep|LessThan0~0 (
	.A(\beep_beep|Equal0~0_combout ),
	.B(\beep_beep|Equal0~1_combout ),
	.C(\beep_beep|CNT [0]),
	.D(BEEP_REG[1]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\beep_beep|LessThan0~0_combout ),
	.Cout(),
	.Q());
defparam \beep_beep|LessThan0~0 .coord_x = 6;
defparam \beep_beep|LessThan0~0 .coord_y = 3;
defparam \beep_beep|LessThan0~0 .coord_z = 0;
defparam \beep_beep|LessThan0~0 .mask = 16'h77F7;
defparam \beep_beep|LessThan0~0 .modeMux = 1'b0;
defparam \beep_beep|LessThan0~0 .FeedbackMux = 1'b0;
defparam \beep_beep|LessThan0~0 .ShiftMux = 1'b0;
defparam \beep_beep|LessThan0~0 .BypassEn = 1'b0;
defparam \beep_beep|LessThan0~0 .CarryEnb = 1'b1;

alta_slice \beep_beep|LessThan1~0 (
	.A(\beep_beep|Equal0~0_combout ),
	.B(\beep_beep|Equal0~1_combout ),
	.C(\beep_beep|CNT [0]),
	.D(BEEP_REG[1]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\beep_beep|LessThan1~0_combout ),
	.Cout(),
	.Q());
defparam \beep_beep|LessThan1~0 .coord_x = 6;
defparam \beep_beep|LessThan1~0 .coord_y = 3;
defparam \beep_beep|LessThan1~0 .coord_z = 15;
defparam \beep_beep|LessThan1~0 .mask = 16'h0800;
defparam \beep_beep|LessThan1~0 .modeMux = 1'b0;
defparam \beep_beep|LessThan1~0 .FeedbackMux = 1'b0;
defparam \beep_beep|LessThan1~0 .ShiftMux = 1'b0;
defparam \beep_beep|LessThan1~0 .BypassEn = 1'b0;
defparam \beep_beep|LessThan1~0 .CarryEnb = 1'b1;

alta_slice \clk_div|Add0~0 (
	.A(vcc),
	.B(\clk_div|CNT[0]~18_combout ),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|Add0~0_combout ),
	.Cout(\clk_div|Add0~1 ),
	.Q());
defparam \clk_div|Add0~0 .coord_x = 2;
defparam \clk_div|Add0~0 .coord_y = 3;
defparam \clk_div|Add0~0 .coord_z = 11;
defparam \clk_div|Add0~0 .mask = 16'h33CC;
defparam \clk_div|Add0~0 .modeMux = 1'b0;
defparam \clk_div|Add0~0 .FeedbackMux = 1'b0;
defparam \clk_div|Add0~0 .ShiftMux = 1'b0;
defparam \clk_div|Add0~0 .BypassEn = 1'b0;
defparam \clk_div|Add0~0 .CarryEnb = 1'b0;

alta_slice \clk_div|Add0~2 (
	.A(\clk_div|CNT[1]~14_combout ),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\clk_div|Add0~1 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|Add0~2_combout ),
	.Cout(\clk_div|Add0~3 ),
	.Q());
defparam \clk_div|Add0~2 .coord_x = 2;
defparam \clk_div|Add0~2 .coord_y = 3;
defparam \clk_div|Add0~2 .coord_z = 12;
defparam \clk_div|Add0~2 .mask = 16'hA505;
defparam \clk_div|Add0~2 .modeMux = 1'b1;
defparam \clk_div|Add0~2 .FeedbackMux = 1'b0;
defparam \clk_div|Add0~2 .ShiftMux = 1'b0;
defparam \clk_div|Add0~2 .BypassEn = 1'b0;
defparam \clk_div|Add0~2 .CarryEnb = 1'b0;

alta_slice \clk_div|Add0~4 (
	.A(vcc),
	.B(\clk_div|CNT[2]~10_combout ),
	.C(vcc),
	.D(vcc),
	.Cin(\clk_div|Add0~3 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|Add0~4_combout ),
	.Cout(\clk_div|Add0~5 ),
	.Q());
defparam \clk_div|Add0~4 .coord_x = 2;
defparam \clk_div|Add0~4 .coord_y = 3;
defparam \clk_div|Add0~4 .coord_z = 13;
defparam \clk_div|Add0~4 .mask = 16'h3CCF;
defparam \clk_div|Add0~4 .modeMux = 1'b1;
defparam \clk_div|Add0~4 .FeedbackMux = 1'b0;
defparam \clk_div|Add0~4 .ShiftMux = 1'b0;
defparam \clk_div|Add0~4 .BypassEn = 1'b0;
defparam \clk_div|Add0~4 .CarryEnb = 1'b0;

alta_slice \clk_div|Add0~6 (
	.A(vcc),
	.B(\clk_div|CNT[3]~6_combout ),
	.C(vcc),
	.D(vcc),
	.Cin(\clk_div|Add0~5 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|Add0~6_combout ),
	.Cout(\clk_div|Add0~7 ),
	.Q());
defparam \clk_div|Add0~6 .coord_x = 2;
defparam \clk_div|Add0~6 .coord_y = 3;
defparam \clk_div|Add0~6 .coord_z = 14;
defparam \clk_div|Add0~6 .mask = 16'hC303;
defparam \clk_div|Add0~6 .modeMux = 1'b1;
defparam \clk_div|Add0~6 .FeedbackMux = 1'b0;
defparam \clk_div|Add0~6 .ShiftMux = 1'b0;
defparam \clk_div|Add0~6 .BypassEn = 1'b0;
defparam \clk_div|Add0~6 .CarryEnb = 1'b0;

alta_slice \clk_div|Add0~8 (
	.A(\clk_div|CNT[4]~2_combout ),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\clk_div|Add0~7 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|Add0~8_combout ),
	.Cout(),
	.Q());
defparam \clk_div|Add0~8 .coord_x = 2;
defparam \clk_div|Add0~8 .coord_y = 3;
defparam \clk_div|Add0~8 .coord_z = 15;
defparam \clk_div|Add0~8 .mask = 16'h5A5A;
defparam \clk_div|Add0~8 .modeMux = 1'b1;
defparam \clk_div|Add0~8 .FeedbackMux = 1'b0;
defparam \clk_div|Add0~8 .ShiftMux = 1'b0;
defparam \clk_div|Add0~8 .BypassEn = 1'b0;
defparam \clk_div|Add0~8 .CarryEnb = 1'b1;

alta_slice \clk_div|CNT[0]~17 (
	.A(vcc),
	.B(\clk_div|CNT[0]~17_combout ),
	.C(\DBG~inputclkctrl_outclk ),
	.D(DIV_REG[0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|CNT[0]~17_combout ),
	.Cout(),
	.Q());
defparam \clk_div|CNT[0]~17 .coord_x = 2;
defparam \clk_div|CNT[0]~17 .coord_y = 3;
defparam \clk_div|CNT[0]~17 .coord_z = 2;
defparam \clk_div|CNT[0]~17 .mask = 16'hC0CF;
defparam \clk_div|CNT[0]~17 .modeMux = 1'b0;
defparam \clk_div|CNT[0]~17 .FeedbackMux = 1'b0;
defparam \clk_div|CNT[0]~17 .ShiftMux = 1'b0;
defparam \clk_div|CNT[0]~17 .BypassEn = 1'b0;
defparam \clk_div|CNT[0]~17 .CarryEnb = 1'b1;

alta_slice \clk_div|CNT[0]~18 (
	.A(\clk_div|CNT[0]~_emulated_q ),
	.B(\DBG~input_o ),
	.C(\clk_div|CNT[0]~17_combout ),
	.D(DIV_REG[0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|CNT[0]~18_combout ),
	.Cout(),
	.Q());
defparam \clk_div|CNT[0]~18 .coord_x = 2;
defparam \clk_div|CNT[0]~18 .coord_y = 3;
defparam \clk_div|CNT[0]~18 .coord_z = 9;
defparam \clk_div|CNT[0]~18 .mask = 16'h487B;
defparam \clk_div|CNT[0]~18 .modeMux = 1'b0;
defparam \clk_div|CNT[0]~18 .FeedbackMux = 1'b0;
defparam \clk_div|CNT[0]~18 .ShiftMux = 1'b0;
defparam \clk_div|CNT[0]~18 .BypassEn = 1'b0;
defparam \clk_div|CNT[0]~18 .CarryEnb = 1'b1;

alta_slice \clk_div|CNT[0]~_emulated (
	.A(\clk_div|CNT[0]~17_combout ),
	.B(\clk_div|Add0~0_combout ),
	.C(\clk_div|Equal0~1_combout ),
	.D(DIV_REG[0]),
	.Cin(),
	.Qin(\clk_div|CNT[0]~_emulated_q ),
	.Clk(\CLK~inputclkctrl_outclk_X2_Y24_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y24_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|CNT[0]~19_combout ),
	.Cout(),
	.Q(\clk_div|CNT[0]~_emulated_q ));
defparam \clk_div|CNT[0]~_emulated .coord_x = 2;
defparam \clk_div|CNT[0]~_emulated .coord_y = 3;
defparam \clk_div|CNT[0]~_emulated .coord_z = 4;
defparam \clk_div|CNT[0]~_emulated .mask = 16'hA656;
defparam \clk_div|CNT[0]~_emulated .modeMux = 1'b0;
defparam \clk_div|CNT[0]~_emulated .FeedbackMux = 1'b0;
defparam \clk_div|CNT[0]~_emulated .ShiftMux = 1'b0;
defparam \clk_div|CNT[0]~_emulated .BypassEn = 1'b0;
defparam \clk_div|CNT[0]~_emulated .CarryEnb = 1'b1;

alta_slice \clk_div|CNT[1]~13 (
	.A(vcc),
	.B(\clk_div|CNT[1]~13_combout ),
	.C(\DBG~inputclkctrl_outclk ),
	.D(DIV_REG[1]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|CNT[1]~13_combout ),
	.Cout(),
	.Q());
defparam \clk_div|CNT[1]~13 .coord_x = 2;
defparam \clk_div|CNT[1]~13 .coord_y = 3;
defparam \clk_div|CNT[1]~13 .coord_z = 7;
defparam \clk_div|CNT[1]~13 .mask = 16'hC0CF;
defparam \clk_div|CNT[1]~13 .modeMux = 1'b0;
defparam \clk_div|CNT[1]~13 .FeedbackMux = 1'b0;
defparam \clk_div|CNT[1]~13 .ShiftMux = 1'b0;
defparam \clk_div|CNT[1]~13 .BypassEn = 1'b0;
defparam \clk_div|CNT[1]~13 .CarryEnb = 1'b1;

alta_slice \clk_div|CNT[1]~14 (
	.A(\DBG~input_o ),
	.B(DIV_REG[1]),
	.C(\clk_div|CNT[1]~_emulated_q ),
	.D(\clk_div|CNT[1]~13_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|CNT[1]~14_combout ),
	.Cout(),
	.Q());
defparam \clk_div|CNT[1]~14 .coord_x = 2;
defparam \clk_div|CNT[1]~14 .coord_y = 3;
defparam \clk_div|CNT[1]~14 .coord_z = 10;
defparam \clk_div|CNT[1]~14 .mask = 16'h1BB1;
defparam \clk_div|CNT[1]~14 .modeMux = 1'b0;
defparam \clk_div|CNT[1]~14 .FeedbackMux = 1'b0;
defparam \clk_div|CNT[1]~14 .ShiftMux = 1'b0;
defparam \clk_div|CNT[1]~14 .BypassEn = 1'b0;
defparam \clk_div|CNT[1]~14 .CarryEnb = 1'b1;

alta_slice \clk_div|CNT[1]~_emulated (
	.A(\clk_div|Add0~2_combout ),
	.B(\clk_div|CNT[1]~13_combout ),
	.C(\clk_div|Equal0~1_combout ),
	.D(DIV_REG[1]),
	.Cin(),
	.Qin(\clk_div|CNT[1]~_emulated_q ),
	.Clk(\CLK~inputclkctrl_outclk_X2_Y24_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y24_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|CNT[1]~15_combout ),
	.Cout(),
	.Q(\clk_div|CNT[1]~_emulated_q ));
defparam \clk_div|CNT[1]~_emulated .coord_x = 2;
defparam \clk_div|CNT[1]~_emulated .coord_y = 3;
defparam \clk_div|CNT[1]~_emulated .coord_z = 6;
defparam \clk_div|CNT[1]~_emulated .mask = 16'hC636;
defparam \clk_div|CNT[1]~_emulated .modeMux = 1'b0;
defparam \clk_div|CNT[1]~_emulated .FeedbackMux = 1'b0;
defparam \clk_div|CNT[1]~_emulated .ShiftMux = 1'b0;
defparam \clk_div|CNT[1]~_emulated .BypassEn = 1'b0;
defparam \clk_div|CNT[1]~_emulated .CarryEnb = 1'b1;

alta_slice \clk_div|CNT[2]~10 (
	.A(\DBG~input_o ),
	.B(\clk_div|CNT[2]~9_combout ),
	.C(\clk_div|CNT[2]~_emulated_q ),
	.D(DIV_REG[2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|CNT[2]~10_combout ),
	.Cout(),
	.Q());
defparam \clk_div|CNT[2]~10 .coord_x = 1;
defparam \clk_div|CNT[2]~10 .coord_y = 3;
defparam \clk_div|CNT[2]~10 .coord_z = 11;
defparam \clk_div|CNT[2]~10 .mask = 16'h287D;
defparam \clk_div|CNT[2]~10 .modeMux = 1'b0;
defparam \clk_div|CNT[2]~10 .FeedbackMux = 1'b0;
defparam \clk_div|CNT[2]~10 .ShiftMux = 1'b0;
defparam \clk_div|CNT[2]~10 .BypassEn = 1'b0;
defparam \clk_div|CNT[2]~10 .CarryEnb = 1'b1;

alta_slice \clk_div|CNT[2]~9 (
	.A(vcc),
	.B(\clk_div|CNT[2]~9_combout ),
	.C(\DBG~inputclkctrl_outclk ),
	.D(DIV_REG[2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|CNT[2]~9_combout ),
	.Cout(),
	.Q());
defparam \clk_div|CNT[2]~9 .coord_x = 1;
defparam \clk_div|CNT[2]~9 .coord_y = 3;
defparam \clk_div|CNT[2]~9 .coord_z = 7;
defparam \clk_div|CNT[2]~9 .mask = 16'hC0CF;
defparam \clk_div|CNT[2]~9 .modeMux = 1'b0;
defparam \clk_div|CNT[2]~9 .FeedbackMux = 1'b0;
defparam \clk_div|CNT[2]~9 .ShiftMux = 1'b0;
defparam \clk_div|CNT[2]~9 .BypassEn = 1'b0;
defparam \clk_div|CNT[2]~9 .CarryEnb = 1'b1;

alta_slice \clk_div|CNT[2]~_emulated (
	.A(\clk_div|Add0~4_combout ),
	.B(\clk_div|Equal0~1_combout ),
	.C(\clk_div|CNT[2]~9_combout ),
	.D(DIV_REG[2]),
	.Cin(),
	.Qin(\clk_div|CNT[2]~_emulated_q ),
	.Clk(\CLK~inputclkctrl_outclk_X1_Y24_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X1_Y24_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|CNT[2]~11_combout ),
	.Cout(),
	.Q(\clk_div|CNT[2]~_emulated_q ));
defparam \clk_div|CNT[2]~_emulated .coord_x = 1;
defparam \clk_div|CNT[2]~_emulated .coord_y = 3;
defparam \clk_div|CNT[2]~_emulated .coord_z = 6;
defparam \clk_div|CNT[2]~_emulated .mask = 16'hD21E;
defparam \clk_div|CNT[2]~_emulated .modeMux = 1'b0;
defparam \clk_div|CNT[2]~_emulated .FeedbackMux = 1'b0;
defparam \clk_div|CNT[2]~_emulated .ShiftMux = 1'b0;
defparam \clk_div|CNT[2]~_emulated .BypassEn = 1'b0;
defparam \clk_div|CNT[2]~_emulated .CarryEnb = 1'b1;

alta_slice \clk_div|CNT[3]~5 (
	.A(\clk_div|CNT[3]~5_combout ),
	.B(vcc),
	.C(\DBG~inputclkctrl_outclk ),
	.D(DIV_REG[3]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|CNT[3]~5_combout ),
	.Cout(),
	.Q());
defparam \clk_div|CNT[3]~5 .coord_x = 1;
defparam \clk_div|CNT[3]~5 .coord_y = 3;
defparam \clk_div|CNT[3]~5 .coord_z = 13;
defparam \clk_div|CNT[3]~5 .mask = 16'hA0AF;
defparam \clk_div|CNT[3]~5 .modeMux = 1'b0;
defparam \clk_div|CNT[3]~5 .FeedbackMux = 1'b0;
defparam \clk_div|CNT[3]~5 .ShiftMux = 1'b0;
defparam \clk_div|CNT[3]~5 .BypassEn = 1'b0;
defparam \clk_div|CNT[3]~5 .CarryEnb = 1'b1;

alta_slice \clk_div|CNT[3]~6 (
	.A(\DBG~input_o ),
	.B(DIV_REG[3]),
	.C(\clk_div|CNT[3]~5_combout ),
	.D(\clk_div|CNT[3]~_emulated_q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|CNT[3]~6_combout ),
	.Cout(),
	.Q());
defparam \clk_div|CNT[3]~6 .coord_x = 1;
defparam \clk_div|CNT[3]~6 .coord_y = 3;
defparam \clk_div|CNT[3]~6 .coord_z = 12;
defparam \clk_div|CNT[3]~6 .mask = 16'h1BB1;
defparam \clk_div|CNT[3]~6 .modeMux = 1'b0;
defparam \clk_div|CNT[3]~6 .FeedbackMux = 1'b0;
defparam \clk_div|CNT[3]~6 .ShiftMux = 1'b0;
defparam \clk_div|CNT[3]~6 .BypassEn = 1'b0;
defparam \clk_div|CNT[3]~6 .CarryEnb = 1'b1;

alta_slice \clk_div|CNT[3]~_emulated (
	.A(\clk_div|Equal0~1_combout ),
	.B(\clk_div|CNT[3]~5_combout ),
	.C(\clk_div|Add0~6_combout ),
	.D(DIV_REG[3]),
	.Cin(),
	.Qin(\clk_div|CNT[3]~_emulated_q ),
	.Clk(\CLK~inputclkctrl_outclk_X1_Y24_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X1_Y24_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|CNT[3]~7_combout ),
	.Cout(),
	.Q(\clk_div|CNT[3]~_emulated_q ));
defparam \clk_div|CNT[3]~_emulated .coord_x = 1;
defparam \clk_div|CNT[3]~_emulated .coord_y = 3;
defparam \clk_div|CNT[3]~_emulated .coord_z = 15;
defparam \clk_div|CNT[3]~_emulated .mask = 16'h9C36;
defparam \clk_div|CNT[3]~_emulated .modeMux = 1'b0;
defparam \clk_div|CNT[3]~_emulated .FeedbackMux = 1'b0;
defparam \clk_div|CNT[3]~_emulated .ShiftMux = 1'b0;
defparam \clk_div|CNT[3]~_emulated .BypassEn = 1'b0;
defparam \clk_div|CNT[3]~_emulated .CarryEnb = 1'b1;

alta_slice \clk_div|CNT[4]~1 (
	.A(\clk_div|CNT[4]~1_combout ),
	.B(vcc),
	.C(\DBG~inputclkctrl_outclk ),
	.D(DIV_REG[4]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|CNT[4]~1_combout ),
	.Cout(),
	.Q());
defparam \clk_div|CNT[4]~1 .coord_x = 1;
defparam \clk_div|CNT[4]~1 .coord_y = 3;
defparam \clk_div|CNT[4]~1 .coord_z = 8;
defparam \clk_div|CNT[4]~1 .mask = 16'hA0AF;
defparam \clk_div|CNT[4]~1 .modeMux = 1'b0;
defparam \clk_div|CNT[4]~1 .FeedbackMux = 1'b0;
defparam \clk_div|CNT[4]~1 .ShiftMux = 1'b0;
defparam \clk_div|CNT[4]~1 .BypassEn = 1'b0;
defparam \clk_div|CNT[4]~1 .CarryEnb = 1'b1;

alta_slice \clk_div|CNT[4]~2 (
	.A(\clk_div|CNT[4]~1_combout ),
	.B(DIV_REG[4]),
	.C(\DBG~input_o ),
	.D(\clk_div|CNT[4]~_emulated_q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|CNT[4]~2_combout ),
	.Cout(),
	.Q());
defparam \clk_div|CNT[4]~2 .coord_x = 1;
defparam \clk_div|CNT[4]~2 .coord_y = 3;
defparam \clk_div|CNT[4]~2 .coord_z = 2;
defparam \clk_div|CNT[4]~2 .mask = 16'h53A3;
defparam \clk_div|CNT[4]~2 .modeMux = 1'b0;
defparam \clk_div|CNT[4]~2 .FeedbackMux = 1'b0;
defparam \clk_div|CNT[4]~2 .ShiftMux = 1'b0;
defparam \clk_div|CNT[4]~2 .BypassEn = 1'b0;
defparam \clk_div|CNT[4]~2 .CarryEnb = 1'b1;

alta_slice \clk_div|CNT[4]~_emulated (
	.A(\clk_div|CNT[4]~1_combout ),
	.B(DIV_REG[4]),
	.C(\clk_div|Equal0~1_combout ),
	.D(\clk_div|Add0~8_combout ),
	.Cin(),
	.Qin(\clk_div|CNT[4]~_emulated_q ),
	.Clk(\CLK~inputclkctrl_outclk_X2_Y24_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X2_Y24_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|CNT[4]~3_combout ),
	.Cout(),
	.Q(\clk_div|CNT[4]~_emulated_q ));
defparam \clk_div|CNT[4]~_emulated .coord_x = 2;
defparam \clk_div|CNT[4]~_emulated .coord_y = 3;
defparam \clk_div|CNT[4]~_emulated .coord_z = 3;
defparam \clk_div|CNT[4]~_emulated .mask = 16'h959A;
defparam \clk_div|CNT[4]~_emulated .modeMux = 1'b0;
defparam \clk_div|CNT[4]~_emulated .FeedbackMux = 1'b0;
defparam \clk_div|CNT[4]~_emulated .ShiftMux = 1'b0;
defparam \clk_div|CNT[4]~_emulated .BypassEn = 1'b0;
defparam \clk_div|CNT[4]~_emulated .CarryEnb = 1'b1;

alta_slice \clk_div|Equal0~0 (
	.A(\clk_div|CNT[4]~2_combout ),
	.B(\clk_div|CNT[3]~6_combout ),
	.C(\clk_div|CNT[1]~14_combout ),
	.D(\clk_div|CNT[2]~10_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|Equal0~0_combout ),
	.Cout(),
	.Q());
defparam \clk_div|Equal0~0 .coord_x = 2;
defparam \clk_div|Equal0~0 .coord_y = 3;
defparam \clk_div|Equal0~0 .coord_z = 1;
defparam \clk_div|Equal0~0 .mask = 16'h0001;
defparam \clk_div|Equal0~0 .modeMux = 1'b0;
defparam \clk_div|Equal0~0 .FeedbackMux = 1'b0;
defparam \clk_div|Equal0~0 .ShiftMux = 1'b0;
defparam \clk_div|Equal0~0 .BypassEn = 1'b0;
defparam \clk_div|Equal0~0 .CarryEnb = 1'b1;

alta_slice \clk_div|Equal0~1 (
	.A(vcc),
	.B(vcc),
	.C(\clk_div|Equal0~0_combout ),
	.D(\clk_div|CNT[0]~18_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|Equal0~1_combout ),
	.Cout(),
	.Q());
defparam \clk_div|Equal0~1 .coord_x = 2;
defparam \clk_div|Equal0~1 .coord_y = 3;
defparam \clk_div|Equal0~1 .coord_z = 0;
defparam \clk_div|Equal0~1 .mask = 16'h00F0;
defparam \clk_div|Equal0~1 .modeMux = 1'b0;
defparam \clk_div|Equal0~1 .FeedbackMux = 1'b0;
defparam \clk_div|Equal0~1 .ShiftMux = 1'b0;
defparam \clk_div|Equal0~1 .BypassEn = 1'b0;
defparam \clk_div|Equal0~1 .CarryEnb = 1'b1;

alta_slice \clk_div|OUT (
	.A(vcc),
	.B(\clk_div|CNT[0]~18_combout ),
	.C(vcc),
	.D(\clk_div|Equal0~0_combout ),
	.Cin(),
	.Qin(\clk_div|OUT~q ),
	.Clk(\CLK~inputclkctrl_outclk_X1_Y24_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X1_Y24_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\clk_div|OUT~0_combout ),
	.Cout(),
	.Q(\clk_div|OUT~q ));
defparam \clk_div|OUT .coord_x = 1;
defparam \clk_div|OUT .coord_y = 3;
defparam \clk_div|OUT .coord_z = 0;
defparam \clk_div|OUT .mask = 16'hC3F0;
defparam \clk_div|OUT .modeMux = 1'b0;
defparam \clk_div|OUT .FeedbackMux = 1'b1;
defparam \clk_div|OUT .ShiftMux = 1'b0;
defparam \clk_div|OUT .BypassEn = 1'b0;
defparam \clk_div|OUT .CarryEnb = 1'b1;

alta_clkenctrl clken_ctrl_X1_Y24_N0(
	.ClkIn(\iWR~clkctrl_outclk ),
	.ClkEn(\DIV_REG[4]~1_combout ),
	.ClkOut(\iWR~clkctrl_outclk__DIV_REG[4]~1_combout_X1_Y24_SIG_SIG ));
defparam clken_ctrl_X1_Y24_N0.coord_x = 1;
defparam clken_ctrl_X1_Y24_N0.coord_y = 3;
defparam clken_ctrl_X1_Y24_N0.coord_z = 0;
defparam clken_ctrl_X1_Y24_N0.ClkMux = 2'b10;
defparam clken_ctrl_X1_Y24_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X1_Y24_N1(
	.ClkIn(\CLK~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\CLK~inputclkctrl_outclk_X1_Y24_SIG_VCC ));
defparam clken_ctrl_X1_Y24_N1.coord_x = 1;
defparam clken_ctrl_X1_Y24_N1.coord_y = 3;
defparam clken_ctrl_X1_Y24_N1.coord_z = 1;
defparam clken_ctrl_X1_Y24_N1.ClkMux = 2'b10;
defparam clken_ctrl_X1_Y24_N1.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X1_Y28_N0(
	.ClkIn(\iWR~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\iWR~clkctrl_outclk_X1_Y28_SIG_VCC ));
defparam clken_ctrl_X1_Y28_N0.coord_x = 1;
defparam clken_ctrl_X1_Y28_N0.coord_y = 2;
defparam clken_ctrl_X1_Y28_N0.coord_z = 0;
defparam clken_ctrl_X1_Y28_N0.ClkMux = 2'b10;
defparam clken_ctrl_X1_Y28_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X1_Y30_N0(
	.ClkIn(\iWR~clkctrl_outclk ),
	.ClkEn(\Decoder0~2_combout ),
	.ClkOut(\iWR~clkctrl_outclk__Decoder0~2_combout_X1_Y30_SIG_SIG ));
defparam clken_ctrl_X1_Y30_N0.coord_x = 5;
defparam clken_ctrl_X1_Y30_N0.coord_y = 3;
defparam clken_ctrl_X1_Y30_N0.coord_z = 0;
defparam clken_ctrl_X1_Y30_N0.ClkMux = 2'b10;
defparam clken_ctrl_X1_Y30_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X1_Y30_N1(
	.ClkIn(\beep_beep|CLK_DIV_2~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\beep_beep|CLK_DIV_2~clkctrl_outclk_X1_Y30_SIG_VCC ));
defparam clken_ctrl_X1_Y30_N1.coord_x = 5;
defparam clken_ctrl_X1_Y30_N1.coord_y = 3;
defparam clken_ctrl_X1_Y30_N1.coord_z = 1;
defparam clken_ctrl_X1_Y30_N1.ClkMux = 2'b10;
defparam clken_ctrl_X1_Y30_N1.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X2_Y24_N0(
	.ClkIn(\iWR~clkctrl_outclk ),
	.ClkEn(\DIV_REG[4]~1_combout ),
	.ClkOut(\iWR~clkctrl_outclk__DIV_REG[4]~1_combout_X2_Y24_SIG_SIG ));
defparam clken_ctrl_X2_Y24_N0.coord_x = 2;
defparam clken_ctrl_X2_Y24_N0.coord_y = 3;
defparam clken_ctrl_X2_Y24_N0.coord_z = 0;
defparam clken_ctrl_X2_Y24_N0.ClkMux = 2'b10;
defparam clken_ctrl_X2_Y24_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X2_Y24_N1(
	.ClkIn(\CLK~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\CLK~inputclkctrl_outclk_X2_Y24_SIG_VCC ));
defparam clken_ctrl_X2_Y24_N1.coord_x = 2;
defparam clken_ctrl_X2_Y24_N1.coord_y = 3;
defparam clken_ctrl_X2_Y24_N1.coord_z = 1;
defparam clken_ctrl_X2_Y24_N1.ClkMux = 2'b10;
defparam clken_ctrl_X2_Y24_N1.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X2_Y27_N0(
	.ClkIn(\CLK~inputclkctrl_outclk ),
	.ClkEn(\ki_san|DATA[0]~3_combout ),
	.ClkOut(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X2_Y27_SIG_SIG ));
defparam clken_ctrl_X2_Y27_N0.coord_x = 3;
defparam clken_ctrl_X2_Y27_N0.coord_y = 1;
defparam clken_ctrl_X2_Y27_N0.coord_z = 0;
defparam clken_ctrl_X2_Y27_N0.ClkMux = 2'b10;
defparam clken_ctrl_X2_Y27_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X2_Y28_N0(
	.ClkIn(\iRD~combout ),
	.ClkEn(),
	.ClkOut(\iRD~combout_X2_Y28_SIG_VCC ));
defparam clken_ctrl_X2_Y28_N0.coord_x = 2;
defparam clken_ctrl_X2_Y28_N0.coord_y = 2;
defparam clken_ctrl_X2_Y28_N0.coord_z = 0;
defparam clken_ctrl_X2_Y28_N0.ClkMux = 2'b10;
defparam clken_ctrl_X2_Y28_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X2_Y30_N0(
	.ClkIn(\iWR~clkctrl_outclk ),
	.ClkEn(\Decoder0~2_combout ),
	.ClkOut(\iWR~clkctrl_outclk__Decoder0~2_combout_X2_Y30_SIG_SIG ));
defparam clken_ctrl_X2_Y30_N0.coord_x = 4;
defparam clken_ctrl_X2_Y30_N0.coord_y = 3;
defparam clken_ctrl_X2_Y30_N0.coord_z = 0;
defparam clken_ctrl_X2_Y30_N0.ClkMux = 2'b10;
defparam clken_ctrl_X2_Y30_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X2_Y30_N1(
	.ClkIn(\iWR~clkctrl_outclk ),
	.ClkEn(\LCD_DATA_BUF~2_combout ),
	.ClkOut(\iWR~clkctrl_outclk__LCD_DATA_BUF~2_combout_X2_Y30_SIG_SIG ));
defparam clken_ctrl_X2_Y30_N1.coord_x = 4;
defparam clken_ctrl_X2_Y30_N1.coord_y = 3;
defparam clken_ctrl_X2_Y30_N1.coord_z = 1;
defparam clken_ctrl_X2_Y30_N1.ClkMux = 2'b10;
defparam clken_ctrl_X2_Y30_N1.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X3_Y27_N0(
	.ClkIn(\CLK~inputclkctrl_outclk ),
	.ClkEn(\ki_san|Equal0~4_combout ),
	.ClkOut(\CLK~inputclkctrl_outclk__ki_san|Equal0~4_combout_X3_Y27_SIG_SIG ));
defparam clken_ctrl_X3_Y27_N0.coord_x = 6;
defparam clken_ctrl_X3_Y27_N0.coord_y = 1;
defparam clken_ctrl_X3_Y27_N0.coord_z = 0;
defparam clken_ctrl_X3_Y27_N0.ClkMux = 2'b10;
defparam clken_ctrl_X3_Y27_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X3_Y27_N1(
	.ClkIn(\ki_san|Equal3~combout ),
	.ClkEn(),
	.ClkOut(\ki_san|Equal3~combout_X3_Y27_SIG_VCC ));
defparam clken_ctrl_X3_Y27_N1.coord_x = 6;
defparam clken_ctrl_X3_Y27_N1.coord_y = 1;
defparam clken_ctrl_X3_Y27_N1.coord_z = 1;
defparam clken_ctrl_X3_Y27_N1.ClkMux = 2'b10;
defparam clken_ctrl_X3_Y27_N1.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X3_Y28_N0(
	.ClkIn(\iRD~combout ),
	.ClkEn(),
	.ClkOut(\iRD~combout_X3_Y28_SIG_VCC ));
defparam clken_ctrl_X3_Y28_N0.coord_x = 3;
defparam clken_ctrl_X3_Y28_N0.coord_y = 2;
defparam clken_ctrl_X3_Y28_N0.coord_z = 0;
defparam clken_ctrl_X3_Y28_N0.ClkMux = 2'b10;
defparam clken_ctrl_X3_Y28_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X3_Y28_N1(
	.ClkIn(\CLK~inputclkctrl_outclk ),
	.ClkEn(\ki_san|DATA[0]~3_combout ),
	.ClkOut(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X3_Y28_SIG_SIG ));
defparam clken_ctrl_X3_Y28_N1.coord_x = 3;
defparam clken_ctrl_X3_Y28_N1.coord_y = 2;
defparam clken_ctrl_X3_Y28_N1.coord_z = 1;
defparam clken_ctrl_X3_Y28_N1.ClkMux = 2'b10;
defparam clken_ctrl_X3_Y28_N1.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X4_Y27_N0(
	.ClkIn(\CLK~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\CLK~inputclkctrl_outclk_X4_Y27_SIG_VCC ));
defparam clken_ctrl_X4_Y27_N0.coord_x = 5;
defparam clken_ctrl_X4_Y27_N0.coord_y = 1;
defparam clken_ctrl_X4_Y27_N0.coord_z = 0;
defparam clken_ctrl_X4_Y27_N0.ClkMux = 2'b10;
defparam clken_ctrl_X4_Y27_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X4_Y27_N1(
	.ClkIn(\CLK~inputclkctrl_outclk ),
	.ClkEn(\ki_san|Equal0~4_combout ),
	.ClkOut(\CLK~inputclkctrl_outclk__ki_san|Equal0~4_combout_X4_Y27_SIG_SIG ));
defparam clken_ctrl_X4_Y27_N1.coord_x = 5;
defparam clken_ctrl_X4_Y27_N1.coord_y = 1;
defparam clken_ctrl_X4_Y27_N1.coord_z = 1;
defparam clken_ctrl_X4_Y27_N1.ClkMux = 2'b10;
defparam clken_ctrl_X4_Y27_N1.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X4_Y28_N0(
	.ClkIn(\CLK~inputclkctrl_outclk ),
	.ClkEn(\ki_san|DATA[0]~3_combout ),
	.ClkOut(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X4_Y28_SIG_SIG ));
defparam clken_ctrl_X4_Y28_N0.coord_x = 4;
defparam clken_ctrl_X4_Y28_N0.coord_y = 2;
defparam clken_ctrl_X4_Y28_N0.coord_z = 0;
defparam clken_ctrl_X4_Y28_N0.ClkMux = 2'b10;
defparam clken_ctrl_X4_Y28_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X4_Y28_N1(
	.ClkIn(\iRD~combout ),
	.ClkEn(),
	.ClkOut(\iRD~combout_X4_Y28_SIG_VCC ));
defparam clken_ctrl_X4_Y28_N1.coord_x = 4;
defparam clken_ctrl_X4_Y28_N1.coord_y = 2;
defparam clken_ctrl_X4_Y28_N1.coord_z = 1;
defparam clken_ctrl_X4_Y28_N1.ClkMux = 2'b10;
defparam clken_ctrl_X4_Y28_N1.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X5_Y27_N0(
	.ClkIn(\CLK~inputclkctrl_outclk ),
	.ClkEn(\ki_san|DATA[0]~3_combout ),
	.ClkOut(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X5_Y27_SIG_SIG ));
defparam clken_ctrl_X5_Y27_N0.coord_x = 4;
defparam clken_ctrl_X5_Y27_N0.coord_y = 1;
defparam clken_ctrl_X5_Y27_N0.coord_z = 0;
defparam clken_ctrl_X5_Y27_N0.ClkMux = 2'b10;
defparam clken_ctrl_X5_Y27_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X5_Y27_N1(
	.ClkIn(\CLK~inputclkctrl_outclk ),
	.ClkEn(\ki_san|COL[0]~1_combout ),
	.ClkOut(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ));
defparam clken_ctrl_X5_Y27_N1.coord_x = 4;
defparam clken_ctrl_X5_Y27_N1.coord_y = 1;
defparam clken_ctrl_X5_Y27_N1.coord_z = 1;
defparam clken_ctrl_X5_Y27_N1.ClkMux = 2'b10;
defparam clken_ctrl_X5_Y27_N1.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X5_Y28_N0(
	.ClkIn(\CLK~inputclkctrl_outclk ),
	.ClkEn(\ki_san|DATA[0]~3_combout ),
	.ClkOut(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X5_Y28_SIG_SIG ));
defparam clken_ctrl_X5_Y28_N0.coord_x = 5;
defparam clken_ctrl_X5_Y28_N0.coord_y = 2;
defparam clken_ctrl_X5_Y28_N0.coord_z = 0;
defparam clken_ctrl_X5_Y28_N0.ClkMux = 2'b10;
defparam clken_ctrl_X5_Y28_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X5_Y28_N1(
	.ClkIn(\iWR~clkctrl_outclk ),
	.ClkEn(\Decoder0~1_combout ),
	.ClkOut(\iWR~clkctrl_outclk__Decoder0~1_combout_X5_Y28_SIG_SIG ));
defparam clken_ctrl_X5_Y28_N1.coord_x = 5;
defparam clken_ctrl_X5_Y28_N1.coord_y = 2;
defparam clken_ctrl_X5_Y28_N1.coord_z = 1;
defparam clken_ctrl_X5_Y28_N1.ClkMux = 2'b10;
defparam clken_ctrl_X5_Y28_N1.ClkEnMux = 2'b10;

alta_slice iRD(
	.A(\IORQ~input_o ),
	.B(\ADDR[5]~input_o ),
	.C(\Equal0~0_combout ),
	.D(\RD~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\iRD~combout ),
	.Cout(),
	.Q());
defparam iRD.coord_x = 2;
defparam iRD.coord_y = 2;
defparam iRD.coord_z = 12;
defparam iRD.mask = 16'h0045;
defparam iRD.modeMux = 1'b0;
defparam iRD.FeedbackMux = 1'b0;
defparam iRD.ShiftMux = 1'b0;
defparam iRD.BypassEn = 1'b0;
defparam iRD.CarryEnb = 1'b1;

alta_slice iWR(
	.A(\ADDR[5]~input_o ),
	.B(\WR~input_o ),
	.C(\IORQ~input_o ),
	.D(\Equal0~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\iWR~combout ),
	.Cout(),
	.Q());
defparam iWR.coord_x = 1;
defparam iWR.coord_y = 2;
defparam iWR.coord_z = 9;
defparam iWR.mask = 16'h0203;
defparam iWR.modeMux = 1'b0;
defparam iWR.FeedbackMux = 1'b0;
defparam iWR.ShiftMux = 1'b0;
defparam iWR.BypassEn = 1'b0;
defparam iWR.CarryEnb = 1'b1;

alta_io_gclk \iWR~clkctrl (
	.inclk(\iWR~combout ),
	.outclk(\iWR~clkctrl_outclk ));
defparam \iWR~clkctrl .coord_x = 0;
defparam \iWR~clkctrl .coord_y = 2;
defparam \iWR~clkctrl .coord_z = 1;

alta_slice \ki_san|Add1~0 (
	.A(\ki_san|COL_POS [3]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [1]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|Add1~0_combout ),
	.Cout(),
	.Q());
defparam \ki_san|Add1~0 .coord_x = 6;
defparam \ki_san|Add1~0 .coord_y = 1;
defparam \ki_san|Add1~0 .coord_z = 13;
defparam \ki_san|Add1~0 .mask = 16'h6AAA;
defparam \ki_san|Add1~0 .modeMux = 1'b0;
defparam \ki_san|Add1~0 .FeedbackMux = 1'b0;
defparam \ki_san|Add1~0 .ShiftMux = 1'b0;
defparam \ki_san|Add1~0 .BypassEn = 1'b0;
defparam \ki_san|Add1~0 .CarryEnb = 1'b1;

alta_slice \ki_san|CLK_DIV_CNT[0] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\ki_san|CLK_DIV_CNT [0]),
	.Clk(\CLK~inputclkctrl_outclk_X4_Y27_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X4_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|CLK_DIV_CNT[0]~18_combout ),
	.Cout(),
	.Q(\ki_san|CLK_DIV_CNT [0]));
defparam \ki_san|CLK_DIV_CNT[0] .coord_x = 5;
defparam \ki_san|CLK_DIV_CNT[0] .coord_y = 1;
defparam \ki_san|CLK_DIV_CNT[0] .coord_z = 13;
defparam \ki_san|CLK_DIV_CNT[0] .mask = 16'h0F0F;
defparam \ki_san|CLK_DIV_CNT[0] .modeMux = 1'b0;
defparam \ki_san|CLK_DIV_CNT[0] .FeedbackMux = 1'b1;
defparam \ki_san|CLK_DIV_CNT[0] .ShiftMux = 1'b0;
defparam \ki_san|CLK_DIV_CNT[0] .BypassEn = 1'b0;
defparam \ki_san|CLK_DIV_CNT[0] .CarryEnb = 1'b1;

alta_slice \ki_san|CLK_DIV_CNT[1] (
	.A(\ki_san|CLK_DIV_CNT [1]),
	.B(\ki_san|CLK_DIV_CNT [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\ki_san|CLK_DIV_CNT [1]),
	.Clk(\CLK~inputclkctrl_outclk_X4_Y27_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X4_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|CLK_DIV_CNT[1]~6_combout ),
	.Cout(\ki_san|CLK_DIV_CNT[1]~7 ),
	.Q(\ki_san|CLK_DIV_CNT [1]));
defparam \ki_san|CLK_DIV_CNT[1] .coord_x = 5;
defparam \ki_san|CLK_DIV_CNT[1] .coord_y = 1;
defparam \ki_san|CLK_DIV_CNT[1] .coord_z = 0;
defparam \ki_san|CLK_DIV_CNT[1] .mask = 16'h6688;
defparam \ki_san|CLK_DIV_CNT[1] .modeMux = 1'b0;
defparam \ki_san|CLK_DIV_CNT[1] .FeedbackMux = 1'b0;
defparam \ki_san|CLK_DIV_CNT[1] .ShiftMux = 1'b0;
defparam \ki_san|CLK_DIV_CNT[1] .BypassEn = 1'b0;
defparam \ki_san|CLK_DIV_CNT[1] .CarryEnb = 1'b0;

alta_slice \ki_san|CLK_DIV_CNT[2] (
	.A(vcc),
	.B(\ki_san|CLK_DIV_CNT [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\ki_san|CLK_DIV_CNT[1]~7 ),
	.Qin(\ki_san|CLK_DIV_CNT [2]),
	.Clk(\CLK~inputclkctrl_outclk_X4_Y27_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X4_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|CLK_DIV_CNT[2]~8_combout ),
	.Cout(\ki_san|CLK_DIV_CNT[2]~9 ),
	.Q(\ki_san|CLK_DIV_CNT [2]));
defparam \ki_san|CLK_DIV_CNT[2] .coord_x = 5;
defparam \ki_san|CLK_DIV_CNT[2] .coord_y = 1;
defparam \ki_san|CLK_DIV_CNT[2] .coord_z = 1;
defparam \ki_san|CLK_DIV_CNT[2] .mask = 16'h3C3F;
defparam \ki_san|CLK_DIV_CNT[2] .modeMux = 1'b1;
defparam \ki_san|CLK_DIV_CNT[2] .FeedbackMux = 1'b0;
defparam \ki_san|CLK_DIV_CNT[2] .ShiftMux = 1'b0;
defparam \ki_san|CLK_DIV_CNT[2] .BypassEn = 1'b0;
defparam \ki_san|CLK_DIV_CNT[2] .CarryEnb = 1'b0;

alta_slice \ki_san|CLK_DIV_CNT[3] (
	.A(vcc),
	.B(\ki_san|CLK_DIV_CNT [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\ki_san|CLK_DIV_CNT[2]~9 ),
	.Qin(\ki_san|CLK_DIV_CNT [3]),
	.Clk(\CLK~inputclkctrl_outclk_X4_Y27_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X4_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|CLK_DIV_CNT[3]~10_combout ),
	.Cout(\ki_san|CLK_DIV_CNT[3]~11 ),
	.Q(\ki_san|CLK_DIV_CNT [3]));
defparam \ki_san|CLK_DIV_CNT[3] .coord_x = 5;
defparam \ki_san|CLK_DIV_CNT[3] .coord_y = 1;
defparam \ki_san|CLK_DIV_CNT[3] .coord_z = 2;
defparam \ki_san|CLK_DIV_CNT[3] .mask = 16'hC30C;
defparam \ki_san|CLK_DIV_CNT[3] .modeMux = 1'b1;
defparam \ki_san|CLK_DIV_CNT[3] .FeedbackMux = 1'b0;
defparam \ki_san|CLK_DIV_CNT[3] .ShiftMux = 1'b0;
defparam \ki_san|CLK_DIV_CNT[3] .BypassEn = 1'b0;
defparam \ki_san|CLK_DIV_CNT[3] .CarryEnb = 1'b0;

alta_slice \ki_san|CLK_DIV_CNT[4] (
	.A(vcc),
	.B(\ki_san|CLK_DIV_CNT [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\ki_san|CLK_DIV_CNT[3]~11 ),
	.Qin(\ki_san|CLK_DIV_CNT [4]),
	.Clk(\CLK~inputclkctrl_outclk_X4_Y27_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X4_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|CLK_DIV_CNT[4]~12_combout ),
	.Cout(\ki_san|CLK_DIV_CNT[4]~13 ),
	.Q(\ki_san|CLK_DIV_CNT [4]));
defparam \ki_san|CLK_DIV_CNT[4] .coord_x = 5;
defparam \ki_san|CLK_DIV_CNT[4] .coord_y = 1;
defparam \ki_san|CLK_DIV_CNT[4] .coord_z = 3;
defparam \ki_san|CLK_DIV_CNT[4] .mask = 16'h3C3F;
defparam \ki_san|CLK_DIV_CNT[4] .modeMux = 1'b1;
defparam \ki_san|CLK_DIV_CNT[4] .FeedbackMux = 1'b0;
defparam \ki_san|CLK_DIV_CNT[4] .ShiftMux = 1'b0;
defparam \ki_san|CLK_DIV_CNT[4] .BypassEn = 1'b0;
defparam \ki_san|CLK_DIV_CNT[4] .CarryEnb = 1'b0;

alta_slice \ki_san|CLK_DIV_CNT[5] (
	.A(vcc),
	.B(\ki_san|CLK_DIV_CNT [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\ki_san|CLK_DIV_CNT[4]~13 ),
	.Qin(\ki_san|CLK_DIV_CNT [5]),
	.Clk(\CLK~inputclkctrl_outclk_X4_Y27_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X4_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|CLK_DIV_CNT[5]~14_combout ),
	.Cout(\ki_san|CLK_DIV_CNT[5]~15 ),
	.Q(\ki_san|CLK_DIV_CNT [5]));
defparam \ki_san|CLK_DIV_CNT[5] .coord_x = 5;
defparam \ki_san|CLK_DIV_CNT[5] .coord_y = 1;
defparam \ki_san|CLK_DIV_CNT[5] .coord_z = 4;
defparam \ki_san|CLK_DIV_CNT[5] .mask = 16'hC30C;
defparam \ki_san|CLK_DIV_CNT[5] .modeMux = 1'b1;
defparam \ki_san|CLK_DIV_CNT[5] .FeedbackMux = 1'b0;
defparam \ki_san|CLK_DIV_CNT[5] .ShiftMux = 1'b0;
defparam \ki_san|CLK_DIV_CNT[5] .BypassEn = 1'b0;
defparam \ki_san|CLK_DIV_CNT[5] .CarryEnb = 1'b0;

alta_slice \ki_san|CLK_DIV_CNT[6] (
	.A(vcc),
	.B(\ki_san|CLK_DIV_CNT [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\ki_san|CLK_DIV_CNT[5]~15 ),
	.Qin(\ki_san|CLK_DIV_CNT [6]),
	.Clk(\CLK~inputclkctrl_outclk_X4_Y27_SIG_VCC ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X4_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|CLK_DIV_CNT[6]~16_combout ),
	.Cout(),
	.Q(\ki_san|CLK_DIV_CNT [6]));
defparam \ki_san|CLK_DIV_CNT[6] .coord_x = 5;
defparam \ki_san|CLK_DIV_CNT[6] .coord_y = 1;
defparam \ki_san|CLK_DIV_CNT[6] .coord_z = 5;
defparam \ki_san|CLK_DIV_CNT[6] .mask = 16'h3C3C;
defparam \ki_san|CLK_DIV_CNT[6] .modeMux = 1'b1;
defparam \ki_san|CLK_DIV_CNT[6] .FeedbackMux = 1'b0;
defparam \ki_san|CLK_DIV_CNT[6] .ShiftMux = 1'b0;
defparam \ki_san|CLK_DIV_CNT[6] .BypassEn = 1'b0;
defparam \ki_san|CLK_DIV_CNT[6] .CarryEnb = 1'b1;

alta_slice \ki_san|COL[0] (
	.A(\ki_san|COL_POS [3]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [1]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL [0]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|ShiftRight0~0_combout ),
	.Cout(),
	.Q(\ki_san|COL [0]));
defparam \ki_san|COL[0] .coord_x = 4;
defparam \ki_san|COL[0] .coord_y = 1;
defparam \ki_san|COL[0] .coord_z = 5;
defparam \ki_san|COL[0] .mask = 16'h0080;
defparam \ki_san|COL[0] .modeMux = 1'b0;
defparam \ki_san|COL[0] .FeedbackMux = 1'b0;
defparam \ki_san|COL[0] .ShiftMux = 1'b0;
defparam \ki_san|COL[0] .BypassEn = 1'b0;
defparam \ki_san|COL[0] .CarryEnb = 1'b1;

alta_slice \ki_san|COL[10] (
	.A(\ki_san|COL_POS [3]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [1]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL [10]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|ShiftRight0~10_combout ),
	.Cout(),
	.Q(\ki_san|COL [10]));
defparam \ki_san|COL[10] .coord_x = 4;
defparam \ki_san|COL[10] .coord_y = 1;
defparam \ki_san|COL[10] .coord_z = 11;
defparam \ki_san|COL[10] .mask = 16'h0004;
defparam \ki_san|COL[10] .modeMux = 1'b0;
defparam \ki_san|COL[10] .FeedbackMux = 1'b0;
defparam \ki_san|COL[10] .ShiftMux = 1'b0;
defparam \ki_san|COL[10] .BypassEn = 1'b0;
defparam \ki_san|COL[10] .CarryEnb = 1'b1;

alta_slice \ki_san|COL[11] (
	.A(\ki_san|COL_POS [1]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [3]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL [11]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|ShiftRight0~11_combout ),
	.Cout(),
	.Q(\ki_san|COL [11]));
defparam \ki_san|COL[11] .coord_x = 4;
defparam \ki_san|COL[11] .coord_y = 1;
defparam \ki_san|COL[11] .coord_z = 4;
defparam \ki_san|COL[11] .mask = 16'h0200;
defparam \ki_san|COL[11] .modeMux = 1'b0;
defparam \ki_san|COL[11] .FeedbackMux = 1'b0;
defparam \ki_san|COL[11] .ShiftMux = 1'b0;
defparam \ki_san|COL[11] .BypassEn = 1'b0;
defparam \ki_san|COL[11] .CarryEnb = 1'b1;

alta_slice \ki_san|COL[12] (
	.A(\ki_san|COL_POS [1]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [3]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL [12]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|ShiftRight0~12_combout ),
	.Cout(),
	.Q(\ki_san|COL [12]));
defparam \ki_san|COL[12] .coord_x = 4;
defparam \ki_san|COL[12] .coord_y = 1;
defparam \ki_san|COL[12] .coord_z = 8;
defparam \ki_san|COL[12] .mask = 16'h0002;
defparam \ki_san|COL[12] .modeMux = 1'b0;
defparam \ki_san|COL[12] .FeedbackMux = 1'b0;
defparam \ki_san|COL[12] .ShiftMux = 1'b0;
defparam \ki_san|COL[12] .BypassEn = 1'b0;
defparam \ki_san|COL[12] .CarryEnb = 1'b1;

alta_slice \ki_san|COL[13] (
	.A(\ki_san|COL_POS [1]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [3]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL [13]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|ShiftRight0~13_combout ),
	.Cout(),
	.Q(\ki_san|COL [13]));
defparam \ki_san|COL[13] .coord_x = 4;
defparam \ki_san|COL[13] .coord_y = 1;
defparam \ki_san|COL[13] .coord_z = 1;
defparam \ki_san|COL[13] .mask = 16'h0100;
defparam \ki_san|COL[13] .modeMux = 1'b0;
defparam \ki_san|COL[13] .FeedbackMux = 1'b0;
defparam \ki_san|COL[13] .ShiftMux = 1'b0;
defparam \ki_san|COL[13] .BypassEn = 1'b0;
defparam \ki_san|COL[13] .CarryEnb = 1'b1;

alta_slice \ki_san|COL[14] (
	.A(\ki_san|COL_POS [1]),
	.B(vcc),
	.C(\ki_san|Equal3~combout ),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL [14]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ),
	.SyncReset(SyncReset_X5_Y27_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y27_VCC),
	.LutOut(\ki_san|Add1~2_combout ),
	.Cout(),
	.Q(\ki_san|COL [14]));
defparam \ki_san|COL[14] .coord_x = 4;
defparam \ki_san|COL[14] .coord_y = 1;
defparam \ki_san|COL[14] .coord_z = 10;
defparam \ki_san|COL[14] .mask = 16'h55AA;
defparam \ki_san|COL[14] .modeMux = 1'b0;
defparam \ki_san|COL[14] .FeedbackMux = 1'b0;
defparam \ki_san|COL[14] .ShiftMux = 1'b0;
defparam \ki_san|COL[14] .BypassEn = 1'b1;
defparam \ki_san|COL[14] .CarryEnb = 1'b1;

alta_slice \ki_san|COL[1] (
	.A(\ki_san|COL_POS [1]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [3]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL [1]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|ShiftRight0~1_combout ),
	.Cout(),
	.Q(\ki_san|COL [1]));
defparam \ki_san|COL[1] .coord_x = 4;
defparam \ki_san|COL[1] .coord_y = 1;
defparam \ki_san|COL[1] .coord_z = 14;
defparam \ki_san|COL[1] .mask = 16'h4000;
defparam \ki_san|COL[1] .modeMux = 1'b0;
defparam \ki_san|COL[1] .FeedbackMux = 1'b0;
defparam \ki_san|COL[1] .ShiftMux = 1'b0;
defparam \ki_san|COL[1] .BypassEn = 1'b0;
defparam \ki_san|COL[1] .CarryEnb = 1'b1;

alta_slice \ki_san|COL[2] (
	.A(\ki_san|COL_POS [1]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [3]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL [2]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|ShiftRight0~2_combout ),
	.Cout(),
	.Q(\ki_san|COL [2]));
defparam \ki_san|COL[2] .coord_x = 4;
defparam \ki_san|COL[2] .coord_y = 1;
defparam \ki_san|COL[2] .coord_z = 15;
defparam \ki_san|COL[2] .mask = 16'h0040;
defparam \ki_san|COL[2] .modeMux = 1'b0;
defparam \ki_san|COL[2] .FeedbackMux = 1'b0;
defparam \ki_san|COL[2] .ShiftMux = 1'b0;
defparam \ki_san|COL[2] .BypassEn = 1'b0;
defparam \ki_san|COL[2] .CarryEnb = 1'b1;

alta_slice \ki_san|COL[3] (
	.A(\ki_san|COL_POS [1]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [3]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL [3]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|ShiftRight0~3_combout ),
	.Cout(),
	.Q(\ki_san|COL [3]));
defparam \ki_san|COL[3] .coord_x = 4;
defparam \ki_san|COL[3] .coord_y = 1;
defparam \ki_san|COL[3] .coord_z = 6;
defparam \ki_san|COL[3] .mask = 16'h2000;
defparam \ki_san|COL[3] .modeMux = 1'b0;
defparam \ki_san|COL[3] .FeedbackMux = 1'b0;
defparam \ki_san|COL[3] .ShiftMux = 1'b0;
defparam \ki_san|COL[3] .BypassEn = 1'b0;
defparam \ki_san|COL[3] .CarryEnb = 1'b1;

alta_slice \ki_san|COL[4] (
	.A(\ki_san|COL_POS [1]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [3]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL [4]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|ShiftRight0~4_combout ),
	.Cout(),
	.Q(\ki_san|COL [4]));
defparam \ki_san|COL[4] .coord_x = 4;
defparam \ki_san|COL[4] .coord_y = 1;
defparam \ki_san|COL[4] .coord_z = 13;
defparam \ki_san|COL[4] .mask = 16'h0020;
defparam \ki_san|COL[4] .modeMux = 1'b0;
defparam \ki_san|COL[4] .FeedbackMux = 1'b0;
defparam \ki_san|COL[4] .ShiftMux = 1'b0;
defparam \ki_san|COL[4] .BypassEn = 1'b0;
defparam \ki_san|COL[4] .CarryEnb = 1'b1;

alta_slice \ki_san|COL[5] (
	.A(\ki_san|COL_POS [1]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [3]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL [5]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|ShiftRight0~5_combout ),
	.Cout(),
	.Q(\ki_san|COL [5]));
defparam \ki_san|COL[5] .coord_x = 4;
defparam \ki_san|COL[5] .coord_y = 1;
defparam \ki_san|COL[5] .coord_z = 3;
defparam \ki_san|COL[5] .mask = 16'h1000;
defparam \ki_san|COL[5] .modeMux = 1'b0;
defparam \ki_san|COL[5] .FeedbackMux = 1'b0;
defparam \ki_san|COL[5] .ShiftMux = 1'b0;
defparam \ki_san|COL[5] .BypassEn = 1'b0;
defparam \ki_san|COL[5] .CarryEnb = 1'b1;

alta_slice \ki_san|COL[6] (
	.A(\ki_san|COL_POS [1]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [3]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL [6]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|ShiftRight0~6_combout ),
	.Cout(),
	.Q(\ki_san|COL [6]));
defparam \ki_san|COL[6] .coord_x = 4;
defparam \ki_san|COL[6] .coord_y = 1;
defparam \ki_san|COL[6] .coord_z = 12;
defparam \ki_san|COL[6] .mask = 16'h0010;
defparam \ki_san|COL[6] .modeMux = 1'b0;
defparam \ki_san|COL[6] .FeedbackMux = 1'b0;
defparam \ki_san|COL[6] .ShiftMux = 1'b0;
defparam \ki_san|COL[6] .BypassEn = 1'b0;
defparam \ki_san|COL[6] .CarryEnb = 1'b1;

alta_slice \ki_san|COL[7] (
	.A(\ki_san|COL_POS [1]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [3]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL [7]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|ShiftRight0~7_combout ),
	.Cout(),
	.Q(\ki_san|COL [7]));
defparam \ki_san|COL[7] .coord_x = 4;
defparam \ki_san|COL[7] .coord_y = 1;
defparam \ki_san|COL[7] .coord_z = 9;
defparam \ki_san|COL[7] .mask = 16'h0800;
defparam \ki_san|COL[7] .modeMux = 1'b0;
defparam \ki_san|COL[7] .FeedbackMux = 1'b0;
defparam \ki_san|COL[7] .ShiftMux = 1'b0;
defparam \ki_san|COL[7] .BypassEn = 1'b0;
defparam \ki_san|COL[7] .CarryEnb = 1'b1;

alta_slice \ki_san|COL[8] (
	.A(\ki_san|COL_POS [1]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [3]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL [8]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|ShiftRight0~8_combout ),
	.Cout(),
	.Q(\ki_san|COL [8]));
defparam \ki_san|COL[8] .coord_x = 4;
defparam \ki_san|COL[8] .coord_y = 1;
defparam \ki_san|COL[8] .coord_z = 2;
defparam \ki_san|COL[8] .mask = 16'h0008;
defparam \ki_san|COL[8] .modeMux = 1'b0;
defparam \ki_san|COL[8] .FeedbackMux = 1'b0;
defparam \ki_san|COL[8] .ShiftMux = 1'b0;
defparam \ki_san|COL[8] .BypassEn = 1'b0;
defparam \ki_san|COL[8] .CarryEnb = 1'b1;

alta_slice \ki_san|COL[9] (
	.A(\ki_san|COL_POS [1]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [3]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL [9]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|COL[0]~1_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X5_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|ShiftRight0~9_combout ),
	.Cout(),
	.Q(\ki_san|COL [9]));
defparam \ki_san|COL[9] .coord_x = 4;
defparam \ki_san|COL[9] .coord_y = 1;
defparam \ki_san|COL[9] .coord_z = 7;
defparam \ki_san|COL[9] .mask = 16'h0400;
defparam \ki_san|COL[9] .modeMux = 1'b0;
defparam \ki_san|COL[9] .FeedbackMux = 1'b0;
defparam \ki_san|COL[9] .ShiftMux = 1'b0;
defparam \ki_san|COL[9] .BypassEn = 1'b0;
defparam \ki_san|COL[9] .CarryEnb = 1'b1;

alta_slice \ki_san|COL_POS[0] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\ki_san|COL_POS [0]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|Equal0~4_combout_X3_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X3_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|COL_POS[0]~0_combout ),
	.Cout(),
	.Q(\ki_san|COL_POS [0]));
defparam \ki_san|COL_POS[0] .coord_x = 6;
defparam \ki_san|COL_POS[0] .coord_y = 1;
defparam \ki_san|COL_POS[0] .coord_z = 12;
defparam \ki_san|COL_POS[0] .mask = 16'h0F0F;
defparam \ki_san|COL_POS[0] .modeMux = 1'b0;
defparam \ki_san|COL_POS[0] .FeedbackMux = 1'b1;
defparam \ki_san|COL_POS[0] .ShiftMux = 1'b0;
defparam \ki_san|COL_POS[0] .BypassEn = 1'b0;
defparam \ki_san|COL_POS[0] .CarryEnb = 1'b1;

alta_slice \ki_san|COL_POS[1] (
	.A(\ki_san|COL[0]~0_combout ),
	.B(\ki_san|Equal0~3_combout ),
	.C(\ki_san|Add1~2_combout ),
	.D(\ki_san|Equal0~2_combout ),
	.Cin(),
	.Qin(\ki_san|COL_POS [1]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|Equal0~4_combout_X4_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X4_Y27_INV ),
	.SyncReset(SyncReset_X4_Y27_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X4_Y27_VCC),
	.LutOut(\ki_san|COL[0]~1_combout ),
	.Cout(),
	.Q(\ki_san|COL_POS [1]));
defparam \ki_san|COL_POS[1] .coord_x = 5;
defparam \ki_san|COL_POS[1] .coord_y = 1;
defparam \ki_san|COL_POS[1] .coord_z = 9;
defparam \ki_san|COL_POS[1] .mask = 16'h8800;
defparam \ki_san|COL_POS[1] .modeMux = 1'b0;
defparam \ki_san|COL_POS[1] .FeedbackMux = 1'b0;
defparam \ki_san|COL_POS[1] .ShiftMux = 1'b0;
defparam \ki_san|COL_POS[1] .BypassEn = 1'b1;
defparam \ki_san|COL_POS[1] .CarryEnb = 1'b1;

alta_slice \ki_san|COL_POS[2] (
	.A(vcc),
	.B(\ki_san|COL_POS [1]),
	.C(vcc),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL_POS [2]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|Equal0~4_combout_X4_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X4_Y27_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|Add1~1_combout ),
	.Cout(),
	.Q(\ki_san|COL_POS [2]));
defparam \ki_san|COL_POS[2] .coord_x = 5;
defparam \ki_san|COL_POS[2] .coord_y = 1;
defparam \ki_san|COL_POS[2] .coord_z = 10;
defparam \ki_san|COL_POS[2] .mask = 16'h3CF0;
defparam \ki_san|COL_POS[2] .modeMux = 1'b0;
defparam \ki_san|COL_POS[2] .FeedbackMux = 1'b1;
defparam \ki_san|COL_POS[2] .ShiftMux = 1'b0;
defparam \ki_san|COL_POS[2] .BypassEn = 1'b0;
defparam \ki_san|COL_POS[2] .CarryEnb = 1'b1;

alta_slice \ki_san|COL_POS[3] (
	.A(\ki_san|COL_POS [2]),
	.B(\ki_san|COL_POS [1]),
	.C(\ki_san|Add1~0_combout ),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|COL_POS [3]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|Equal0~4_combout_X4_Y27_SIG_SIG ),
	.AsyncReset(\DBG~inputclkctrl_outclk__AsyncReset_X4_Y27_INV ),
	.SyncReset(SyncReset_X4_Y27_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X4_Y27_VCC),
	.LutOut(\ki_san|COL[0]~0_combout ),
	.Cout(),
	.Q(\ki_san|COL_POS [3]));
defparam \ki_san|COL_POS[3] .coord_x = 5;
defparam \ki_san|COL_POS[3] .coord_y = 1;
defparam \ki_san|COL_POS[3] .coord_z = 14;
defparam \ki_san|COL_POS[3] .mask = 16'h7FFF;
defparam \ki_san|COL_POS[3] .modeMux = 1'b0;
defparam \ki_san|COL_POS[3] .FeedbackMux = 1'b1;
defparam \ki_san|COL_POS[3] .ShiftMux = 1'b0;
defparam \ki_san|COL_POS[3] .BypassEn = 1'b1;
defparam \ki_san|COL_POS[3] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[0] (
	.A(\ADDR[0]~input_o ),
	.B(\ki_san|DATA [16]),
	.C(\ki_san|DATA~4_combout ),
	.D(\ADDR[1]~input_o ),
	.Cin(),
	.Qin(\ki_san|DATA [0]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X5_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X5_Y28_GND),
	.SyncReset(SyncReset_X5_Y28_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y28_VCC),
	.LutOut(\Selector7~1_combout ),
	.Cout(),
	.Q(\ki_san|DATA [0]));
defparam \ki_san|DATA[0] .coord_x = 5;
defparam \ki_san|DATA[0] .coord_y = 2;
defparam \ki_san|DATA[0] .coord_z = 6;
defparam \ki_san|DATA[0] .mask = 16'hDDA0;
defparam \ki_san|DATA[0] .modeMux = 1'b0;
defparam \ki_san|DATA[0] .FeedbackMux = 1'b1;
defparam \ki_san|DATA[0] .ShiftMux = 1'b0;
defparam \ki_san|DATA[0] .BypassEn = 1'b1;
defparam \ki_san|DATA[0] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[0]~1 (
	.A(\DBG~input_o ),
	.B(\ki_san|CLK_DIV_CNT [0]),
	.C(\ki_san|CLK_DIV_CNT [1]),
	.D(\ki_san|CLK_DIV_CNT [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA[0]~1_combout ),
	.Cout(),
	.Q());
defparam \ki_san|DATA[0]~1 .coord_x = 5;
defparam \ki_san|DATA[0]~1 .coord_y = 1;
defparam \ki_san|DATA[0]~1 .coord_z = 11;
defparam \ki_san|DATA[0]~1 .mask = 16'h8000;
defparam \ki_san|DATA[0]~1 .modeMux = 1'b0;
defparam \ki_san|DATA[0]~1 .FeedbackMux = 1'b0;
defparam \ki_san|DATA[0]~1 .ShiftMux = 1'b0;
defparam \ki_san|DATA[0]~1 .BypassEn = 1'b0;
defparam \ki_san|DATA[0]~1 .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[0]~2 (
	.A(\ki_san|CLK_DIV_CNT [3]),
	.B(\ki_san|CLK_DIV_CNT [4]),
	.C(\ki_san|CLK_DIV_CNT [5]),
	.D(\ki_san|CLK_DIV_CNT [6]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA[0]~2_combout ),
	.Cout(),
	.Q());
defparam \ki_san|DATA[0]~2 .coord_x = 5;
defparam \ki_san|DATA[0]~2 .coord_y = 1;
defparam \ki_san|DATA[0]~2 .coord_z = 6;
defparam \ki_san|DATA[0]~2 .mask = 16'h8000;
defparam \ki_san|DATA[0]~2 .modeMux = 1'b0;
defparam \ki_san|DATA[0]~2 .FeedbackMux = 1'b0;
defparam \ki_san|DATA[0]~2 .ShiftMux = 1'b0;
defparam \ki_san|DATA[0]~2 .BypassEn = 1'b0;
defparam \ki_san|DATA[0]~2 .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[0]~3 (
	.A(vcc),
	.B(vcc),
	.C(\ki_san|DATA[0]~2_combout ),
	.D(\ki_san|DATA[0]~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA[0]~3_combout ),
	.Cout(),
	.Q());
defparam \ki_san|DATA[0]~3 .coord_x = 5;
defparam \ki_san|DATA[0]~3 .coord_y = 1;
defparam \ki_san|DATA[0]~3 .coord_z = 15;
defparam \ki_san|DATA[0]~3 .mask = 16'hF000;
defparam \ki_san|DATA[0]~3 .modeMux = 1'b0;
defparam \ki_san|DATA[0]~3 .FeedbackMux = 1'b0;
defparam \ki_san|DATA[0]~3 .ShiftMux = 1'b0;
defparam \ki_san|DATA[0]~3 .BypassEn = 1'b0;
defparam \ki_san|DATA[0]~3 .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[10] (
	.A(\ki_san|COL_POS [0]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [1]),
	.D(\KEY_R[2]~input_o ),
	.Cin(),
	.Qin(\ki_san|DATA [10]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X2_Y27_SIG_SIG ),
	.AsyncReset(AsyncReset_X2_Y27_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~10_combout ),
	.Cout(),
	.Q(\ki_san|DATA [10]));
defparam \ki_san|DATA[10] .coord_x = 3;
defparam \ki_san|DATA[10] .coord_y = 1;
defparam \ki_san|DATA[10] .coord_z = 5;
defparam \ki_san|DATA[10] .mask = 16'h006C;
defparam \ki_san|DATA[10] .modeMux = 1'b0;
defparam \ki_san|DATA[10] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[10] .ShiftMux = 1'b0;
defparam \ki_san|DATA[10] .BypassEn = 1'b0;
defparam \ki_san|DATA[10] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[11] (
	.A(vcc),
	.B(vcc),
	.C(\KEY_R[2]~input_o ),
	.D(\ki_san|Add1~0_combout ),
	.Cin(),
	.Qin(\ki_san|DATA [11]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X2_Y27_SIG_SIG ),
	.AsyncReset(AsyncReset_X2_Y27_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~13_combout ),
	.Cout(),
	.Q(\ki_san|DATA [11]));
defparam \ki_san|DATA[11] .coord_x = 3;
defparam \ki_san|DATA[11] .coord_y = 1;
defparam \ki_san|DATA[11] .coord_z = 12;
defparam \ki_san|DATA[11] .mask = 16'h0F00;
defparam \ki_san|DATA[11] .modeMux = 1'b0;
defparam \ki_san|DATA[11] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[11] .ShiftMux = 1'b0;
defparam \ki_san|DATA[11] .BypassEn = 1'b0;
defparam \ki_san|DATA[11] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[12] (
	.A(vcc),
	.B(\KEY_R[0]~input_o ),
	.C(\ki_san|DATA~15_combout ),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|DATA [12]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X4_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X4_Y28_GND),
	.SyncReset(SyncReset_X4_Y28_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X4_Y28_VCC),
	.LutOut(\ki_san|DATA~4_combout ),
	.Cout(),
	.Q(\ki_san|DATA [12]));
defparam \ki_san|DATA[12] .coord_x = 4;
defparam \ki_san|DATA[12] .coord_y = 2;
defparam \ki_san|DATA[12] .coord_z = 10;
defparam \ki_san|DATA[12] .mask = 16'h0033;
defparam \ki_san|DATA[12] .modeMux = 1'b0;
defparam \ki_san|DATA[12] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[12] .ShiftMux = 1'b0;
defparam \ki_san|DATA[12] .BypassEn = 1'b1;
defparam \ki_san|DATA[12] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[13] (
	.A(\ADDR[0]~input_o ),
	.B(\ki_san|DATA [6]),
	.C(\ki_san|DATA~17_combout ),
	.D(\ADDR[4]~input_o ),
	.Cin(),
	.Qin(\ki_san|DATA [13]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X3_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X3_Y28_GND),
	.SyncReset(SyncReset_X3_Y28_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X3_Y28_VCC),
	.LutOut(\Selector1~0_combout ),
	.Cout(),
	.Q(\ki_san|DATA [13]));
defparam \ki_san|DATA[13] .coord_x = 3;
defparam \ki_san|DATA[13] .coord_y = 2;
defparam \ki_san|DATA[13] .coord_z = 7;
defparam \ki_san|DATA[13] .mask = 16'h88FF;
defparam \ki_san|DATA[13] .modeMux = 1'b0;
defparam \ki_san|DATA[13] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[13] .ShiftMux = 1'b0;
defparam \ki_san|DATA[13] .BypassEn = 1'b1;
defparam \ki_san|DATA[13] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[14] (
	.A(\KEY_R[3]~input_o ),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [1]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|DATA [14]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X4_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X4_Y28_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~19_combout ),
	.Cout(),
	.Q(\ki_san|DATA [14]));
defparam \ki_san|DATA[14] .coord_x = 4;
defparam \ki_san|DATA[14] .coord_y = 2;
defparam \ki_san|DATA[14] .coord_z = 3;
defparam \ki_san|DATA[14] .mask = 16'h1444;
defparam \ki_san|DATA[14] .modeMux = 1'b0;
defparam \ki_san|DATA[14] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[14] .ShiftMux = 1'b0;
defparam \ki_san|DATA[14] .BypassEn = 1'b0;
defparam \ki_san|DATA[14] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[15] (
	.A(vcc),
	.B(vcc),
	.C(\KEY_R[3]~input_o ),
	.D(\ki_san|Add1~0_combout ),
	.Cin(),
	.Qin(\ki_san|DATA [15]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X5_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X5_Y28_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~21_combout ),
	.Cout(),
	.Q(\ki_san|DATA [15]));
defparam \ki_san|DATA[15] .coord_x = 5;
defparam \ki_san|DATA[15] .coord_y = 2;
defparam \ki_san|DATA[15] .coord_z = 14;
defparam \ki_san|DATA[15] .mask = 16'h0F00;
defparam \ki_san|DATA[15] .modeMux = 1'b0;
defparam \ki_san|DATA[15] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[15] .ShiftMux = 1'b0;
defparam \ki_san|DATA[15] .BypassEn = 1'b0;
defparam \ki_san|DATA[15] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[16] (
	.A(vcc),
	.B(vcc),
	.C(\KEY_R[4]~input_o ),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|DATA [16]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X5_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X5_Y28_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~5_combout ),
	.Cout(),
	.Q(\ki_san|DATA [16]));
defparam \ki_san|DATA[16] .coord_x = 5;
defparam \ki_san|DATA[16] .coord_y = 2;
defparam \ki_san|DATA[16] .coord_z = 15;
defparam \ki_san|DATA[16] .mask = 16'h000F;
defparam \ki_san|DATA[16] .modeMux = 1'b0;
defparam \ki_san|DATA[16] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[16] .ShiftMux = 1'b0;
defparam \ki_san|DATA[16] .BypassEn = 1'b0;
defparam \ki_san|DATA[16] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[17] (
	.A(\KEY_R[4]~input_o ),
	.B(vcc),
	.C(\ki_san|COL_POS [1]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|DATA [17]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X5_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X5_Y28_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~8_combout ),
	.Cout(),
	.Q(\ki_san|DATA [17]));
defparam \ki_san|DATA[17] .coord_x = 5;
defparam \ki_san|DATA[17] .coord_y = 2;
defparam \ki_san|DATA[17] .coord_z = 11;
defparam \ki_san|DATA[17] .mask = 16'h0550;
defparam \ki_san|DATA[17] .modeMux = 1'b0;
defparam \ki_san|DATA[17] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[17] .ShiftMux = 1'b0;
defparam \ki_san|DATA[17] .BypassEn = 1'b0;
defparam \ki_san|DATA[17] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[18] (
	.A(\ki_san|COL_POS [0]),
	.B(\ki_san|COL_POS [1]),
	.C(\KEY_R[4]~input_o ),
	.D(\ki_san|COL_POS [2]),
	.Cin(),
	.Qin(\ki_san|DATA [18]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X2_Y27_SIG_SIG ),
	.AsyncReset(AsyncReset_X2_Y27_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~9_combout ),
	.Cout(),
	.Q(\ki_san|DATA [18]));
defparam \ki_san|DATA[18] .coord_x = 3;
defparam \ki_san|DATA[18] .coord_y = 1;
defparam \ki_san|DATA[18] .coord_z = 8;
defparam \ki_san|DATA[18] .mask = 16'h0708;
defparam \ki_san|DATA[18] .modeMux = 1'b0;
defparam \ki_san|DATA[18] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[18] .ShiftMux = 1'b0;
defparam \ki_san|DATA[18] .BypassEn = 1'b0;
defparam \ki_san|DATA[18] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[19] (
	.A(vcc),
	.B(\KEY_R[4]~input_o ),
	.C(vcc),
	.D(\ki_san|Add1~0_combout ),
	.Cin(),
	.Qin(\ki_san|DATA [19]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X5_Y27_SIG_SIG ),
	.AsyncReset(AsyncReset_X5_Y27_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~12_combout ),
	.Cout(),
	.Q(\ki_san|DATA [19]));
defparam \ki_san|DATA[19] .coord_x = 4;
defparam \ki_san|DATA[19] .coord_y = 1;
defparam \ki_san|DATA[19] .coord_z = 0;
defparam \ki_san|DATA[19] .mask = 16'h3300;
defparam \ki_san|DATA[19] .modeMux = 1'b0;
defparam \ki_san|DATA[19] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[19] .ShiftMux = 1'b0;
defparam \ki_san|DATA[19] .BypassEn = 1'b0;
defparam \ki_san|DATA[19] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[1] (
	.A(\ADDR[0]~input_o ),
	.B(\ki_san|DATA [17]),
	.C(\ki_san|DATA~7_combout ),
	.D(\ADDR[1]~input_o ),
	.Cin(),
	.Qin(\ki_san|DATA [1]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X5_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X5_Y28_GND),
	.SyncReset(SyncReset_X5_Y28_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y28_VCC),
	.LutOut(\Selector6~1_combout ),
	.Cout(),
	.Q(\ki_san|DATA [1]));
defparam \ki_san|DATA[1] .coord_x = 5;
defparam \ki_san|DATA[1] .coord_y = 2;
defparam \ki_san|DATA[1] .coord_z = 13;
defparam \ki_san|DATA[1] .mask = 16'hDDA0;
defparam \ki_san|DATA[1] .modeMux = 1'b0;
defparam \ki_san|DATA[1] .FeedbackMux = 1'b1;
defparam \ki_san|DATA[1] .ShiftMux = 1'b0;
defparam \ki_san|DATA[1] .BypassEn = 1'b1;
defparam \ki_san|DATA[1] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[2] (
	.A(\ki_san|COL_POS [0]),
	.B(\KEY_R[0]~input_o ),
	.C(\ki_san|COL_POS [1]),
	.D(\ki_san|COL_POS [2]),
	.Cin(),
	.Qin(\ki_san|DATA [2]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X4_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X4_Y28_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~11_combout ),
	.Cout(),
	.Q(\ki_san|DATA [2]));
defparam \ki_san|DATA[2] .coord_x = 4;
defparam \ki_san|DATA[2] .coord_y = 2;
defparam \ki_san|DATA[2] .coord_z = 13;
defparam \ki_san|DATA[2] .mask = 16'h1320;
defparam \ki_san|DATA[2] .modeMux = 1'b0;
defparam \ki_san|DATA[2] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[2] .ShiftMux = 1'b0;
defparam \ki_san|DATA[2] .BypassEn = 1'b0;
defparam \ki_san|DATA[2] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[3] (
	.A(vcc),
	.B(\ki_san|Add1~0_combout ),
	.C(vcc),
	.D(\KEY_R[0]~input_o ),
	.Cin(),
	.Qin(\ki_san|DATA [3]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X4_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X4_Y28_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~14_combout ),
	.Cout(),
	.Q(\ki_san|DATA [3]));
defparam \ki_san|DATA[3] .coord_x = 4;
defparam \ki_san|DATA[3] .coord_y = 2;
defparam \ki_san|DATA[3] .coord_z = 12;
defparam \ki_san|DATA[3] .mask = 16'h00CC;
defparam \ki_san|DATA[3] .modeMux = 1'b0;
defparam \ki_san|DATA[3] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[3] .ShiftMux = 1'b0;
defparam \ki_san|DATA[3] .BypassEn = 1'b0;
defparam \ki_san|DATA[3] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[4] (
	.A(\ADDR[0]~input_o ),
	.B(\ki_san|DATA [12]),
	.C(\ki_san|DATA~16_combout ),
	.D(\ADDR[1]~input_o ),
	.Cin(),
	.Qin(\ki_san|DATA [4]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X4_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X4_Y28_GND),
	.SyncReset(SyncReset_X4_Y28_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X4_Y28_VCC),
	.LutOut(\Selector3~4_combout ),
	.Cout(),
	.Q(\ki_san|DATA [4]));
defparam \ki_san|DATA[4] .coord_x = 4;
defparam \ki_san|DATA[4] .coord_y = 2;
defparam \ki_san|DATA[4] .coord_z = 11;
defparam \ki_san|DATA[4] .mask = 16'h44A0;
defparam \ki_san|DATA[4] .modeMux = 1'b0;
defparam \ki_san|DATA[4] .FeedbackMux = 1'b1;
defparam \ki_san|DATA[4] .ShiftMux = 1'b0;
defparam \ki_san|DATA[4] .BypassEn = 1'b1;
defparam \ki_san|DATA[4] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[5] (
	.A(\ADDR[0]~input_o ),
	.B(\ADDR[4]~input_o ),
	.C(\ki_san|DATA~18_combout ),
	.D(\ki_san|DATA [3]),
	.Cin(),
	.Qin(\ki_san|DATA [5]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X3_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X3_Y28_GND),
	.SyncReset(SyncReset_X3_Y28_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X3_Y28_VCC),
	.LutOut(\Selector4~0_combout ),
	.Cout(),
	.Q(\ki_san|DATA [5]));
defparam \ki_san|DATA[5] .coord_x = 3;
defparam \ki_san|DATA[5] .coord_y = 2;
defparam \ki_san|DATA[5] .coord_z = 4;
defparam \ki_san|DATA[5] .mask = 16'h44CC;
defparam \ki_san|DATA[5] .modeMux = 1'b0;
defparam \ki_san|DATA[5] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[5] .ShiftMux = 1'b0;
defparam \ki_san|DATA[5] .BypassEn = 1'b1;
defparam \ki_san|DATA[5] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[6] (
	.A(\ADDR[0]~input_o ),
	.B(\ki_san|DATA [5]),
	.C(\ki_san|DATA~20_combout ),
	.D(\ADDR[4]~input_o ),
	.Cin(),
	.Qin(\ki_san|DATA [6]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X3_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X3_Y28_GND),
	.SyncReset(SyncReset_X3_Y28_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X3_Y28_VCC),
	.LutOut(\Selector2~1_combout ),
	.Cout(),
	.Q(\ki_san|DATA [6]));
defparam \ki_san|DATA[6] .coord_x = 3;
defparam \ki_san|DATA[6] .coord_y = 2;
defparam \ki_san|DATA[6] .coord_z = 6;
defparam \ki_san|DATA[6] .mask = 16'h88FF;
defparam \ki_san|DATA[6] .modeMux = 1'b0;
defparam \ki_san|DATA[6] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[6] .ShiftMux = 1'b0;
defparam \ki_san|DATA[6] .BypassEn = 1'b1;
defparam \ki_san|DATA[6] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[7] (
	.A(\KEY_R[1]~input_o ),
	.B(vcc),
	.C(vcc),
	.D(\ki_san|Add1~0_combout ),
	.Cin(),
	.Qin(\ki_san|DATA [7]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X5_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X5_Y28_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~22_combout ),
	.Cout(),
	.Q(\ki_san|DATA [7]));
defparam \ki_san|DATA[7] .coord_x = 5;
defparam \ki_san|DATA[7] .coord_y = 2;
defparam \ki_san|DATA[7] .coord_z = 0;
defparam \ki_san|DATA[7] .mask = 16'h5500;
defparam \ki_san|DATA[7] .modeMux = 1'b0;
defparam \ki_san|DATA[7] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[7] .ShiftMux = 1'b0;
defparam \ki_san|DATA[7] .BypassEn = 1'b0;
defparam \ki_san|DATA[7] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[8] (
	.A(vcc),
	.B(vcc),
	.C(\KEY_R[2]~input_o ),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|DATA [8]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X5_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X5_Y28_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~0_combout ),
	.Cout(),
	.Q(\ki_san|DATA [8]));
defparam \ki_san|DATA[8] .coord_x = 5;
defparam \ki_san|DATA[8] .coord_y = 2;
defparam \ki_san|DATA[8] .coord_z = 8;
defparam \ki_san|DATA[8] .mask = 16'h000F;
defparam \ki_san|DATA[8] .modeMux = 1'b0;
defparam \ki_san|DATA[8] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[8] .ShiftMux = 1'b0;
defparam \ki_san|DATA[8] .BypassEn = 1'b0;
defparam \ki_san|DATA[8] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA[9] (
	.A(\KEY_R[2]~input_o ),
	.B(vcc),
	.C(\ki_san|COL_POS [1]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(\ki_san|DATA [9]),
	.Clk(\CLK~inputclkctrl_outclk__ki_san|DATA[0]~3_combout_X5_Y28_SIG_SIG ),
	.AsyncReset(AsyncReset_X5_Y28_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~6_combout ),
	.Cout(),
	.Q(\ki_san|DATA [9]));
defparam \ki_san|DATA[9] .coord_x = 5;
defparam \ki_san|DATA[9] .coord_y = 2;
defparam \ki_san|DATA[9] .coord_z = 5;
defparam \ki_san|DATA[9] .mask = 16'h0550;
defparam \ki_san|DATA[9] .modeMux = 1'b0;
defparam \ki_san|DATA[9] .FeedbackMux = 1'b0;
defparam \ki_san|DATA[9] .ShiftMux = 1'b0;
defparam \ki_san|DATA[9] .BypassEn = 1'b0;
defparam \ki_san|DATA[9] .CarryEnb = 1'b1;

alta_slice \ki_san|DATA~15 (
	.A(vcc),
	.B(vcc),
	.C(\KEY_R[3]~input_o ),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~15_combout ),
	.Cout(),
	.Q());
defparam \ki_san|DATA~15 .coord_x = 5;
defparam \ki_san|DATA~15 .coord_y = 2;
defparam \ki_san|DATA~15 .coord_z = 4;
defparam \ki_san|DATA~15 .mask = 16'h000F;
defparam \ki_san|DATA~15 .modeMux = 1'b0;
defparam \ki_san|DATA~15 .FeedbackMux = 1'b0;
defparam \ki_san|DATA~15 .ShiftMux = 1'b0;
defparam \ki_san|DATA~15 .BypassEn = 1'b0;
defparam \ki_san|DATA~15 .CarryEnb = 1'b1;

alta_slice \ki_san|DATA~17 (
	.A(\KEY_R[3]~input_o ),
	.B(vcc),
	.C(\ki_san|COL_POS [1]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~17_combout ),
	.Cout(),
	.Q());
defparam \ki_san|DATA~17 .coord_x = 4;
defparam \ki_san|DATA~17 .coord_y = 2;
defparam \ki_san|DATA~17 .coord_z = 15;
defparam \ki_san|DATA~17 .mask = 16'h0550;
defparam \ki_san|DATA~17 .modeMux = 1'b0;
defparam \ki_san|DATA~17 .FeedbackMux = 1'b0;
defparam \ki_san|DATA~17 .ShiftMux = 1'b0;
defparam \ki_san|DATA~17 .BypassEn = 1'b0;
defparam \ki_san|DATA~17 .CarryEnb = 1'b1;

alta_slice \ki_san|DATA~18 (
	.A(vcc),
	.B(\KEY_R[1]~input_o ),
	.C(\ki_san|COL_POS [1]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~18_combout ),
	.Cout(),
	.Q());
defparam \ki_san|DATA~18 .coord_x = 4;
defparam \ki_san|DATA~18 .coord_y = 2;
defparam \ki_san|DATA~18 .coord_z = 7;
defparam \ki_san|DATA~18 .mask = 16'h0330;
defparam \ki_san|DATA~18 .modeMux = 1'b0;
defparam \ki_san|DATA~18 .FeedbackMux = 1'b0;
defparam \ki_san|DATA~18 .ShiftMux = 1'b0;
defparam \ki_san|DATA~18 .BypassEn = 1'b0;
defparam \ki_san|DATA~18 .CarryEnb = 1'b1;

alta_slice \ki_san|DATA~20 (
	.A(\ki_san|COL_POS [0]),
	.B(\ki_san|COL_POS [2]),
	.C(\ki_san|COL_POS [1]),
	.D(\KEY_R[1]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~20_combout ),
	.Cout(),
	.Q());
defparam \ki_san|DATA~20 .coord_x = 4;
defparam \ki_san|DATA~20 .coord_y = 2;
defparam \ki_san|DATA~20 .coord_z = 8;
defparam \ki_san|DATA~20 .mask = 16'h006C;
defparam \ki_san|DATA~20 .modeMux = 1'b0;
defparam \ki_san|DATA~20 .FeedbackMux = 1'b0;
defparam \ki_san|DATA~20 .ShiftMux = 1'b0;
defparam \ki_san|DATA~20 .BypassEn = 1'b0;
defparam \ki_san|DATA~20 .CarryEnb = 1'b1;

alta_slice \ki_san|DATA~7 (
	.A(vcc),
	.B(\KEY_R[0]~input_o ),
	.C(\ki_san|COL_POS [1]),
	.D(\ki_san|COL_POS [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|DATA~7_combout ),
	.Cout(),
	.Q());
defparam \ki_san|DATA~7 .coord_x = 4;
defparam \ki_san|DATA~7 .coord_y = 2;
defparam \ki_san|DATA~7 .coord_z = 14;
defparam \ki_san|DATA~7 .mask = 16'h0330;
defparam \ki_san|DATA~7 .modeMux = 1'b0;
defparam \ki_san|DATA~7 .FeedbackMux = 1'b0;
defparam \ki_san|DATA~7 .ShiftMux = 1'b0;
defparam \ki_san|DATA~7 .BypassEn = 1'b0;
defparam \ki_san|DATA~7 .CarryEnb = 1'b1;

alta_slice \ki_san|Equal0~2 (
	.A(\ki_san|CLK_DIV_CNT [1]),
	.B(\ki_san|CLK_DIV_CNT [2]),
	.C(\ki_san|CLK_DIV_CNT [3]),
	.D(\ki_san|CLK_DIV_CNT [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|Equal0~2_combout ),
	.Cout(),
	.Q());
defparam \ki_san|Equal0~2 .coord_x = 5;
defparam \ki_san|Equal0~2 .coord_y = 1;
defparam \ki_san|Equal0~2 .coord_z = 8;
defparam \ki_san|Equal0~2 .mask = 16'h0001;
defparam \ki_san|Equal0~2 .modeMux = 1'b0;
defparam \ki_san|Equal0~2 .FeedbackMux = 1'b0;
defparam \ki_san|Equal0~2 .ShiftMux = 1'b0;
defparam \ki_san|Equal0~2 .BypassEn = 1'b0;
defparam \ki_san|Equal0~2 .CarryEnb = 1'b1;

alta_slice \ki_san|Equal0~3 (
	.A(vcc),
	.B(\ki_san|CLK_DIV_CNT [4]),
	.C(\ki_san|CLK_DIV_CNT [5]),
	.D(\ki_san|CLK_DIV_CNT [6]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|Equal0~3_combout ),
	.Cout(),
	.Q());
defparam \ki_san|Equal0~3 .coord_x = 5;
defparam \ki_san|Equal0~3 .coord_y = 1;
defparam \ki_san|Equal0~3 .coord_z = 7;
defparam \ki_san|Equal0~3 .mask = 16'h0003;
defparam \ki_san|Equal0~3 .modeMux = 1'b0;
defparam \ki_san|Equal0~3 .FeedbackMux = 1'b0;
defparam \ki_san|Equal0~3 .ShiftMux = 1'b0;
defparam \ki_san|Equal0~3 .BypassEn = 1'b0;
defparam \ki_san|Equal0~3 .CarryEnb = 1'b1;

alta_slice \ki_san|Equal0~4 (
	.A(\ki_san|Equal0~2_combout ),
	.B(\ki_san|CLK_DIV_CNT [4]),
	.C(\ki_san|CLK_DIV_CNT [5]),
	.D(\ki_san|CLK_DIV_CNT [6]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|Equal0~4_combout ),
	.Cout(),
	.Q());
defparam \ki_san|Equal0~4 .coord_x = 5;
defparam \ki_san|Equal0~4 .coord_y = 1;
defparam \ki_san|Equal0~4 .coord_z = 12;
defparam \ki_san|Equal0~4 .mask = 16'h0002;
defparam \ki_san|Equal0~4 .modeMux = 1'b0;
defparam \ki_san|Equal0~4 .FeedbackMux = 1'b0;
defparam \ki_san|Equal0~4 .ShiftMux = 1'b0;
defparam \ki_san|Equal0~4 .BypassEn = 1'b0;
defparam \ki_san|Equal0~4 .CarryEnb = 1'b1;

alta_slice \ki_san|Equal3 (
	.A(\ki_san|COL_POS [1]),
	.B(\ki_san|COL_POS [3]),
	.C(\ki_san|COL_POS [0]),
	.D(\ki_san|COL_POS [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\ki_san|Equal3~combout ),
	.Cout(),
	.Q());
defparam \ki_san|Equal3 .coord_x = 6;
defparam \ki_san|Equal3 .coord_y = 1;
defparam \ki_san|Equal3 .coord_z = 4;
defparam \ki_san|Equal3 .mask = 16'h0001;
defparam \ki_san|Equal3 .modeMux = 1'b0;
defparam \ki_san|Equal3 .FeedbackMux = 1'b0;
defparam \ki_san|Equal3 .ShiftMux = 1'b0;
defparam \ki_san|Equal3 .BypassEn = 1'b0;
defparam \ki_san|Equal3 .CarryEnb = 1'b1;

alta_syncctrl syncload_ctrl_X1_Y30(
	.Din(\beep_beep|CNT~10_combout ),
	.Dout(\beep_beep|CNT~10_combout__SyncLoad_X1_Y30_SIG ));
defparam syncload_ctrl_X1_Y30.coord_x = 5;
defparam syncload_ctrl_X1_Y30.coord_y = 3;
defparam syncload_ctrl_X1_Y30.coord_z = 1;
defparam syncload_ctrl_X1_Y30.SyncCtrlMux = 2'b10;

alta_syncctrl syncload_ctrl_X2_Y30(
	.Din(),
	.Dout(SyncLoad_X2_Y30_VCC));
defparam syncload_ctrl_X2_Y30.coord_x = 4;
defparam syncload_ctrl_X2_Y30.coord_y = 3;
defparam syncload_ctrl_X2_Y30.coord_z = 1;
defparam syncload_ctrl_X2_Y30.SyncCtrlMux = 2'b01;

alta_syncctrl syncload_ctrl_X3_Y28(
	.Din(),
	.Dout(SyncLoad_X3_Y28_VCC));
defparam syncload_ctrl_X3_Y28.coord_x = 3;
defparam syncload_ctrl_X3_Y28.coord_y = 2;
defparam syncload_ctrl_X3_Y28.coord_z = 1;
defparam syncload_ctrl_X3_Y28.SyncCtrlMux = 2'b01;

alta_syncctrl syncload_ctrl_X4_Y27(
	.Din(),
	.Dout(SyncLoad_X4_Y27_VCC));
defparam syncload_ctrl_X4_Y27.coord_x = 5;
defparam syncload_ctrl_X4_Y27.coord_y = 1;
defparam syncload_ctrl_X4_Y27.coord_z = 1;
defparam syncload_ctrl_X4_Y27.SyncCtrlMux = 2'b01;

alta_syncctrl syncload_ctrl_X4_Y28(
	.Din(),
	.Dout(SyncLoad_X4_Y28_VCC));
defparam syncload_ctrl_X4_Y28.coord_x = 4;
defparam syncload_ctrl_X4_Y28.coord_y = 2;
defparam syncload_ctrl_X4_Y28.coord_z = 1;
defparam syncload_ctrl_X4_Y28.SyncCtrlMux = 2'b01;

alta_syncctrl syncload_ctrl_X5_Y27(
	.Din(),
	.Dout(SyncLoad_X5_Y27_VCC));
defparam syncload_ctrl_X5_Y27.coord_x = 4;
defparam syncload_ctrl_X5_Y27.coord_y = 1;
defparam syncload_ctrl_X5_Y27.coord_z = 1;
defparam syncload_ctrl_X5_Y27.SyncCtrlMux = 2'b01;

alta_syncctrl syncload_ctrl_X5_Y28(
	.Din(),
	.Dout(SyncLoad_X5_Y28_VCC));
defparam syncload_ctrl_X5_Y28.coord_x = 5;
defparam syncload_ctrl_X5_Y28.coord_y = 2;
defparam syncload_ctrl_X5_Y28.coord_z = 1;
defparam syncload_ctrl_X5_Y28.SyncCtrlMux = 2'b01;

alta_syncctrl syncreset_ctrl_X1_Y30(
	.Din(),
	.Dout(SyncReset_X1_Y30_GND));
defparam syncreset_ctrl_X1_Y30.coord_x = 5;
defparam syncreset_ctrl_X1_Y30.coord_y = 3;
defparam syncreset_ctrl_X1_Y30.coord_z = 0;
defparam syncreset_ctrl_X1_Y30.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X2_Y30(
	.Din(),
	.Dout(SyncReset_X2_Y30_GND));
defparam syncreset_ctrl_X2_Y30.coord_x = 4;
defparam syncreset_ctrl_X2_Y30.coord_y = 3;
defparam syncreset_ctrl_X2_Y30.coord_z = 0;
defparam syncreset_ctrl_X2_Y30.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X3_Y28(
	.Din(),
	.Dout(SyncReset_X3_Y28_GND));
defparam syncreset_ctrl_X3_Y28.coord_x = 3;
defparam syncreset_ctrl_X3_Y28.coord_y = 2;
defparam syncreset_ctrl_X3_Y28.coord_z = 0;
defparam syncreset_ctrl_X3_Y28.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X4_Y27(
	.Din(),
	.Dout(SyncReset_X4_Y27_GND));
defparam syncreset_ctrl_X4_Y27.coord_x = 5;
defparam syncreset_ctrl_X4_Y27.coord_y = 1;
defparam syncreset_ctrl_X4_Y27.coord_z = 0;
defparam syncreset_ctrl_X4_Y27.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X4_Y28(
	.Din(),
	.Dout(SyncReset_X4_Y28_GND));
defparam syncreset_ctrl_X4_Y28.coord_x = 4;
defparam syncreset_ctrl_X4_Y28.coord_y = 2;
defparam syncreset_ctrl_X4_Y28.coord_z = 0;
defparam syncreset_ctrl_X4_Y28.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X5_Y27(
	.Din(),
	.Dout(SyncReset_X5_Y27_GND));
defparam syncreset_ctrl_X5_Y27.coord_x = 4;
defparam syncreset_ctrl_X5_Y27.coord_y = 1;
defparam syncreset_ctrl_X5_Y27.coord_z = 0;
defparam syncreset_ctrl_X5_Y27.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X5_Y28(
	.Din(),
	.Dout(SyncReset_X5_Y28_GND));
defparam syncreset_ctrl_X5_Y28.coord_x = 5;
defparam syncreset_ctrl_X5_Y28.coord_y = 2;
defparam syncreset_ctrl_X5_Y28.coord_z = 0;
defparam syncreset_ctrl_X5_Y28.SyncCtrlMux = 2'b00;

endmodule
