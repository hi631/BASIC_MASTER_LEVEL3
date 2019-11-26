`default_nettype none
module vgadisp
(
	FPGA_CLK1_50, FPGA_CLK2_50, FPGA_CLK3_50,
	VGA_EN, VGA_HS, VGA_VS, VGA_B, VGA_G, VGA_R,
	KEY, LED
);

input				FPGA_CLK1_50, FPGA_CLK2_50, FPGA_CLK3_50;
output			VGA_EN, VGA_HS, VGA_VS;
output	[5:0]	VGA_B, VGA_G, VGA_R;
input		[1:0]	KEY;
output	[7:0]	LED;

// L3 CRTC Disp
assign VGA_B[5:0] = dotfb[0] ? 6'h3f : 6'h00;
assign VGA_R[5:0] = dotfb[1] ? 6'h3f : 6'h00; 
assign VGA_G[5:0] = dotfb[2] ? 6'h3f : 6'h00; 
assign VGA_HS = !hsync;
assign VGA_VS = !vsyncn;
// Sys.etc
wire  		 clk50,reset;
wire			 clk128,clk64,clk32,clk16,clk08,clk04,clk02,locked;
reg          reqirq,reqirqc;
wire 	[15:0] jtagctrl;
wire	[7:0]	 ledcnt;
assign reset = !locked || !KEY[0];
assign clk50 = FPGA_CLK1_50;
assign VGA_EN = 1'b1;
assign LED[7:1] = ledcnt[7:1];
assign LED[0] = txd;
// CRTC
wire  [2:0]	 drgb;
wire 			 hsync,vsync,hsyncd,vsyncw,vsyncd,cursol,disptmg;
wire  [13:0] crtmadr;
wire  [4:0]  crtradr;
// ACIA
wire         txd;
wire [7:0]   aciardt = 8'h0;
// Addr/Regs
wire [7:0] dipsw;
assign dipsw = 8'h03;
wire [15:0] cpuadr;
wire [7:0]  cpurdt, cpuwdt,romrdt,ramrdt,iordt,fontdt,cramrdt;
wire [14:0]	romadr;
wire [1:0]	romofs;
wire			mvma,mrw;
reg [7:0]   regkb,scankb;
reg [7:0]   regmode,reginter,regcreg;
// Chip Select
wire			csram,csrom,cscram,cscrtc;
wire 			csio,cspia,csacia,cskbnmi,csdipsw,csmode,csinter,cscreg,cskb;

assign csram   = mvma && !cpuadr[15];									// 0000 - 7FFF RAM
assign csrom   = mvma && cpuadr[15] &&  !csio;						// 8000 - FFFF ROM(xcsio)
assign cscram  = mvma && (cpuadr[15:14] == 2'b00  || cpuadr[15:10] == 6'b010000) && cpuadr[15:10] != 6'b000000; // 0400 - 43FF
assign csio    = mvma && (cpuadr[15:8] == 8'hFF) && (cpuadr[15:4] !=12'hFFF); // I/O address
assign cspia   = csio && cpuadr[7:2] == 6'b110000   ; // FFC0 - FFC3 PIA
assign csacia  = csio && cpuadr[7:1] == 7'b1100010  ; // FFC4 - FFC5 ACIA
assign cscrtc  = csio && cpuadr[7:1] == 7'b1100011  ; // FFC6 - FFC7 CRTC
assign cskbnmi = csio && cpuadr[7:0] == 8'b11001000 ; // FFC8        KBNMI
assign csdipsw = csio && cpuadr[7:0] == 8'b11001001 ; // FFC9        DIPSWITCH
assign csmode  = csio && cpuadr[7:0] == 8'b11010000 ; // FFD0        MODE-SEL
assign csinter = csio && cpuadr[7:0] == 8'b11010110 ; // FFD6        INTERACE-SEL
assign cscreg  = csio && cpuadr[7:0] == 8'b11011000 ; // FFD8        C-REG-SEL
assign cskb    = csio && cpuadr[7:0] == 8'b11100000 ; // FFE0        KB.SCAN 
// MPU Bus.Read Select
assign cpurdt = csrom  ? romrdt  : csram ? ramrdt : csacia ? aciardt : 
					 cscreg ? regcreg : csdipsw ? dipsw : cskb ? scankb : 
					 csmode ? regmode : cskbnmi ? 8'h00 : 8'h00;
// External module					 
clkgen clkgen (
		.refclk(clk50), .rst(1'b0), 				// 50MhZ(in) // reset
		.outclk_0(clk128), .outclk_1(clk64), .outclk_2(clk32), 
		.outclk_3(clk16),	 .outclk_4(clk08), .outclk_5(clk04), 
		.outclk_6(clk02),  .locked(locked) );	// locked.export
reg clk01;
always @ (posedge clk02) begin clk01 <= !clk01; end

cpu09 cpu09 (	
	.clk(clkcpu || cpuwseq[1:0]!=2'b00), .rst(reset), .vma(mvma), 
	.lic_out(), .ifetch(), .opfetch(), .ba(), .bs(),
	.addr(cpuadr), .rw(mrw), .data_out(cpuwdt), .data_in(cpurdt),
	.irq(reqirq), .firq(1'b0), .nmi(1'b0), .halt(1'b0), .hold(1'b0) );

L3RAM2	L3RAM2 (
	.clock ( clk128 ), 
	.address_a(cpuadr[14:0]), .data_a(cpuwdt), .wren_a(csram && !mrw), .q_a(ramrdt),
	.address_b(crtdadr[14:0]),.data_b(8'h00), .wren_b(1'b0), .q_b(ramddto));

L3CRAM2	L3CRAM2 (
	.clock ( clk128  ), 
	.address_a (cpuadr[13:0] ), .data_a (regcreg), .wren_a (cscram && !mrw), .q_a (cramrdt),
	.address_b (crtdadr[13:0]), .data_b (8'h00), .wren_b (1'b0), .q_b (cramdto) );

assign romofs[1:0] = cpuadr[14:13] - 2'b01;
assign romadr[14:0] = {romofs[1:0],cpuadr[12:0]};
L3ROM	L3ROM (
	.clock ( clkcpu ), .address ( romadr ), .q ( romrdt ) );

wire [7:0] fhsel = reginter[3] ? ramddt : { 1'b0, ramddt[6:0]} ;
wire [3:0] flsel = !ramddt[7] ? {crtradr[3:1], 1'b0} : reginter[3] ? crtradr[3:0] : {crtradr[3:1], 1'b1};
L3FONT	L3FONT (
	.clock ( clkdot), .address ( {fhsel,flsel}), .q ( fontdt ) );

mc6845 mc6845(
	.CLOCK(clkcrtc), .CLKEN(1'b1), .nRESET(1'b1),
	.ENABLE(cscrtcs), .R_nW(1'b0), .RS(regcrtcrs), .DI(regcrtc), .DO(),
	.MA(crtmadr), .RA(crtradr),
	.VSYNC(vsync), .HSYNC(hsync), .DE(disptmg), .CURSOR(cursol), .LPSTB() );
/*
bufferedUART mc6850(
		.clk(clkcpu), .n_wr(!(csacia && !mrw)), .n_rd(!(csacia && mrw)),
		.regSel(cpuadr[0]), .dataIn(cpuwdt), .dataOut(aciardt),
		.n_int(), .rxClock(clkcpu), .txClock(clkcpu), // 16 x baud rate
		.rxd(1'b0), .txd(),
		.n_rts(), .n_cts(1'b0), .n_dcd(1'b0) );
*/	

// Clock.Contrl
//wire  clkcpu = clk01 || clk02; // 1Mhz 
wire  clkcpu = clk02; // Max=32MHz 
wire [6:0] clksys;
wire clkcrtc,clkdot;
reg  cscrtcs;
assign clkcrtc = regmode[7] ? clk04 : clk02;
assign clkdot  = regmode[7] ? clk32 : clk16;
reg [1:0] cpuwseq; // CRTC Access Delay
always @ (negedge clkcrtc) begin
	if(reset) begin cpuwseq[1] <= 1'b0; cscrtcs <= 1'b0; end
	else begin
		if(cpuwseq[0]) begin cpuwseq[1] <= 1'b1; cscrtcs <= 1'b1; end
		else           cpuwseq[1] <= 1'b0;
		if(cscrtcs) cscrtcs <= 1'b0;
	end
end
reg [7:0] regcrtc;
reg       regcrtcrs;
always @ (posedge clkcpu) begin
	if(reset)         cpuwseq[0] <= 1'b0;
	else begin
		if(cscrtc) begin
			regcrtc <= cpuwdt; regcrtcrs <= cpuadr[0]; cpuwseq[0] <= 1'b1; end	
		if(cpuwseq[1]) cpuwseq[0] <= 0;
	end
end

// Display Ctrl && Make Dot.data
wire [14:0] crtdadr,crtc40h,crtc80h,crtcadn;
assign crtcadn = {1'b0,crtmadr[13:0]};
assign crtc40h = {({1'b0,crtradr[4:1]} + crtmadr[13:10]) , crtmadr[9:0]}; 
assign crtc80h = {({crtradr[4:1],1'b0} + crtmadr[13:10]) , crtmadr[9:0]}; 
assign crtdadr = regmode[6] ? crtcadn : regmode[7] ? crtc80h : crtc40h;

wire [7:0] 	dpbyte;
wire       	dotdp;
wire [2:0]  dotfb;
reg			disptmgd,disptmgdd;
reg  [2:0] 	dotct,dotseq;
reg  [7:0]  ramddt,ramddtd,cramcdt;
wire [15:0] ramddto,cramdto;
assign dpbyte = cramcdt[4] ? ramddtd : fontdt; // Bit : CG
assign dotdp   = dpbyte[dotct[2:0]] || cursol;
assign dotfb  = !disptmgdd ? 3'b000 : dotdp ? cramcdt[2:0] : regmode[2:0];

always @ (posedge clkdot) begin
	disptmgd <= disptmg;
	if(disptmg && !disptmgd) dotseq <= 3'b001;
	else                     dotseq <= dotseq + 3'b001;
	if(dotseq == 3'h1) dotct <= 3'b000;
	else               dotct <= dotct - 3'b001;
	if(dotseq == 3'h1) ramddt  <= ramddto;
	if(dotseq == 3'h2) cramcdt <= cramdto;
	if(dotseq == 3'h2) disptmgdd <= disptmg;
	ramddtd <= ramddt;
end

// Set L3-Regs
always @ (posedge clkcpu) begin 
	if(!locked) begin regmode <= 8'h00; reginter <= 8'h00; regcreg <= 8'h00; regkb <= 8'h00; end
	else
		if(!mrw) begin
			if(csmode)  regmode  <= cpuwdt;
			if(csinter) reginter <= cpuwdt;
			if(cscreg)  regcreg  <= cpuwdt;
			if(cskb)    regkb    <= cpuwdt;
		end else begin
			if(cscram)  regcreg  <= cramrdt;
		end
end

// vsync Adj
reg vsyncn;
reg [3:0] vsyncdct;
always @ (posedge hsync) begin
	if(vsync) vsyncdct <= 4'b0000;
	else begin
		if(vsyncdct!=4'hF) vsyncdct <= vsyncdct + 4'b0001;
		if(vsyncdct >4'ha && vsyncdct<4'hd) vsyncn <= 1'b1;
		else                                vsyncn <= 1'b0;
	end
end

// KB Dumy.Input(Data From JTAG)
wire [7:0] ps2_kb = 8'h00; // Dumy
wire kbcnt = kinsel ? ct_out[11] : vsync; // [11]=128uS
wire [7:0] kbdata; 
reg  [7:0] kbdatao = 8'h00;
reg        kbcntd,kinsel;
reg  [3:0] kbudct;
assign kbdata  = kinsel ? jtag_kb : ps2_kb;
always @ (posedge clkcpu ) begin
	if(reset) begin reqirq <= 1'b0; scankb <= 8'hff; kbudct <= 4'h0; kinsel <= 1'b0; end
	else begin
		kbcntd <= kbcnt; scankb <= kbdata[7:0];
		if(!(jtag_kb==8'h00 || jtag_kb==8'hff)) kinsel <= 1'b1;
		if(!(ps2_kb ==8'h00 || ps2_kb ==8'hff)) kinsel <= 1'b0;
		if(regkb[6] && kbcnt && !kbcntd && kbdata[7]) begin // Irq.Enable(SS) regkb[6]
			if(kbdata != kbdatao) begin kbudct <= 4'h0;  kbdatao <= kbdata; end
			if(kbdata!=8'hff || !kbudct[1]) begin 
				kbudct <= kbudct + 4'h1;
				reqirq <= 1'b1;
			end
		end
		if(reqirq && cskb) reqirq <= 1'b0;
	end
end

// Debug/Test Program
wire [7:0] jtag_kb;
assign jtag_kb = jtagctrl[7:0];
qsys_led qsys_led (
	 .clk_clk(clk32), .led_export (jtagctrl),.sin_export ({12'h000,kbudct}) );

reg	[23:0] ct_out;
assign ledcnt = ct_out[23:16];
always @ (posedge clk16) begin ct_out <= #1 ct_out + 24'h1; end 

endmodule 

`default_nettype wire