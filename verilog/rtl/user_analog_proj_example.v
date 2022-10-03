// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

/*
 * I/O mapping for analog
 *
 * mprj_io[37]  io_in/out/oeb/in_3v3[26]  ---                    ---
 * mprj_io[36]  io_in/out/oeb/in_3v3[25]  ---                    ---
 * mprj_io[35]  io_in/out/oeb/in_3v3[24]  gpio_analog/noesd[17]  ---
 * mprj_io[34]  io_in/out/oeb/in_3v3[23]  gpio_analog/noesd[16]  ---
 * mprj_io[33]  io_in/out/oeb/in_3v3[22]  gpio_analog/noesd[15]  ---
 * mprj_io[32]  io_in/out/oeb/in_3v3[21]  gpio_analog/noesd[14]  ---
 * mprj_io[31]  io_in/out/oeb/in_3v3[20]  gpio_analog/noesd[13]  ---
 * mprj_io[30]  io_in/out/oeb/in_3v3[19]  gpio_analog/noesd[12]  ---
 * mprj_io[29]  io_in/out/oeb/in_3v3[18]  gpio_analog/noesd[11]  ---
 * mprj_io[28]  io_in/out/oeb/in_3v3[17]  gpio_analog/noesd[10]  ---
 * mprj_io[27]  io_in/out/oeb/in_3v3[16]  gpio_analog/noesd[9]   ---
 * mprj_io[26]  io_in/out/oeb/in_3v3[15]  gpio_analog/noesd[8]   ---
 * mprj_io[25]  io_in/out/oeb/in_3v3[14]  gpio_analog/noesd[7]   ---
 * mprj_io[24]  ---                       ---                    user_analog[10]
 * mprj_io[23]  ---                       ---                    user_analog[9]
 * mprj_io[22]  ---                       ---                    user_analog[8]
 * mprj_io[21]  ---                       ---                    user_analog[7]
 * mprj_io[20]  ---                       ---                    user_analog[6]  clamp[2]
 * mprj_io[19]  ---                       ---                    user_analog[5]  clamp[1]
 * mprj_io[18]  ---                       ---                    user_analog[4]  clamp[0]
 * mprj_io[17]  ---                       ---                    user_analog[3]
 * mprj_io[16]  ---                       ---                    user_analog[2]
 * mprj_io[15]  ---                       ---                    user_analog[1]
 * mprj_io[14]  ---                       ---                    user_analog[0]
 * mprj_io[13]  io_in/out/oeb/in_3v3[13]  gpio_analog/noesd[6]   ---
 * mprj_io[12]  io_in/out/oeb/in_3v3[12]  gpio_analog/noesd[5]   ---
 * mprj_io[11]  io_in/out/oeb/in_3v3[11]  gpio_analog/noesd[4]   ---
 * mprj_io[10]  io_in/out/oeb/in_3v3[10]  gpio_analog/noesd[3]   ---
 * mprj_io[9]   io_in/out/oeb/in_3v3[9]   gpio_analog/noesd[2]   ---
 * mprj_io[8]   io_in/out/oeb/in_3v3[8]   gpio_analog/noesd[1]   ---
 * mprj_io[7]   io_in/out/oeb/in_3v3[7]   gpio_analog/noesd[0]   ---
 * mprj_io[6]   io_in/out/oeb/in_3v3[6]   ---                    ---
 * mprj_io[5]   io_in/out/oeb/in_3v3[5]   ---                    ---
 * mprj_io[4]   io_in/out/oeb/in_3v3[4]   ---                    ---
 * mprj_io[3]   io_in/out/oeb/in_3v3[3]   ---                    ---
 * mprj_io[2]   io_in/out/oeb/in_3v3[2]   ---                    ---
 * mprj_io[1]   io_in/out/oeb/in_3v3[1]   ---                    ---
 * mprj_io[0]   io_in/out/oeb/in_3v3[0]   ---                    ---
 *
 */

/*
 *----------------------------------------------------------------
 *
 * user_analog_proj_example
 *
 * This is an example of a (trivially simple) analog user project,
 * showing how the user project can connect to the I/O pads, both
 * the digital pads, the analog connection on the digital pads,
 * and the dedicated analog pins used as an additional power supply
 * input, with a connected ESD clamp.
 *
 * See the testbench in directory "mprj_por" for the example
 * program that drives this user project.
 *
 *----------------------------------------------------------------
 */

module user_analog_proj_example (
`ifdef USE_POWER_PINS
    inout vdda1,	// User area 1 3.3V supply
    inout vdda2,	// User area 2 3.3V supply
    inout vssa1,	// User area 1 analog ground
    inout vssa2,	// User area 2 analog ground
    inout vccd1,	// User area 1 1.8V supply
    inout vccd2,	// User area 2 1.8v supply
    inout vssd1,	// User area 1 digital ground
    inout vssd2,	// User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-`ANALOG_PADS-1:0] io_in,
    input  [`MPRJ_IO_PADS-`ANALOG_PADS-1:0] io_in_3v3,
    output [`MPRJ_IO_PADS-`ANALOG_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-`ANALOG_PADS-1:0] io_oeb,

    // GPIO-analog
    inout [`MPRJ_IO_PADS-`ANALOG_PADS-10:0] gpio_analog,
    inout [`MPRJ_IO_PADS-`ANALOG_PADS-10:0] gpio_noesd,

    // Dedicated analog
    inout [`ANALOG_PADS-1:0] io_analog,
    inout [2:0] io_clamp_high,
    inout [2:0] io_clamp_low,

    // Clock
    input   user_clock2,

    // IRQ
    output [2:0] irq
);
    wire [`MPRJ_IO_PADS-`ANALOG_PADS-1:0] io_in;
    wire [`MPRJ_IO_PADS-`ANALOG_PADS-1:0] io_in_3v3;
    wire [`MPRJ_IO_PADS-`ANALOG_PADS-1:0] io_out;
    wire [`MPRJ_IO_PADS-`ANALOG_PADS-1:0] io_oeb;
    wire [`ANALOG_PADS-1:0] io_analog;

    wire isupply;	// Independent 3.3V supply
    wire io16, io15, io12, io11;
	//added by moorthii 
	wire clk, rst;
	wire [31:0]wishbone_data_in;
	wire [31:0]wishbone_data_out;
	wire [31:0]wishbone_address_bus;
	wire wb_we_i;
	wire rd_sync_fifo_output_buffer_ADC;
	wire rd_sync_fifo_output_buffer_CSA;
	wire V1_WL;
	wire V2_WL;
	wire V3_WL;
	wire V4_WL;
	wire V1_SL;
	wire V2_SL;
	wire V3_SL;
	wire V4_SL;
	wire V1_BL;
	wire V2_BL;
	wire V3_BL;
	wire V4_BL;
	wire V0_REF_ADC;
	wire V1_REF_ADC;
	wire V2_REF_ADC;
	wire REF_CSA;
	wire VDD_PRE;
	wire [15:0] CSA;
	wire ADC_OUT0;
	wire ADC_OUT1;
	wire ADC_OUT2;
	wire SL;

	assign clk = wb_clk_i;
	assign rst = wb_rst_i;
	assign wishbone_data_in = wbs_dat_i;
	assign wishbone_address_bus[19:0] = wbs_adr_i[19:0]; 
	assign wishbone_address_bus[30] = wbs_adr_i[28];
	assign wishbone_address_bus[31] = wbs_adr_i[29];
	assign wbs_dat_o = wishbone_data_out;
	assign wbs_we_i = wbs_we_i;
	assign rd_sync_fifo_output_buffer_ADC = wbs_we_i;
	assign rd_sync_fifo_output_buffer_CSA = wbs_we_i;
	assign V1_WL = vdda1;
	assign V2_WL = vccd2;
	assign V3_WL = vccd2;
	assign V4_WL = vssd1;
	assign V1_SL = vdda2;
	assign V2_SL = io_analog[5];
	assign V3_SL = vccd1;
	assign V4_SL = vssd1;
	assign V1_BL = vccd2;
	assign V2_BL = vdda2;
	assign V3_BL = io_analog[5];
	assign V4_BL = vssd1;
	assign V0_REF_ADC = io_analog[4];
	assign V1_REF_ADC = io_analog[3];
	assign V2_REF_ADC = io_analog[2];
	assign REF_CSA = io_analog[1];
	assign VDD_PRE = io_analog[0];
	assign gpio_analog[5] = CSA[12];
	assign gpio_analog[0] = ADC_OUT0;
	assign gpio_analog[1] = ADC_OUT1;
	assign gpio_analog[2] = ADC_OUT2;
	assign io_analog[10] = SL;
    

    top_wrapper top_wrapper(
        .clk(clk),
		.rst(rst),
		.wishbone_data_in(wishbone_data_in),
		//.\wishbone_address_bus[19:0] (wishbone_address_bus[19:0]),
		//.\wishbone_address_bus[30] (wishbone_address_bus[30]),
		//.\wishbone_address_bus[31] (wishbone_address_bus[31]),
		.wishbone_address_bus(wishbone_address_bus),
		.wishbone_data_out(wishbone_data_out),
		.wbs_we_i(wbs_we_i),
		.rd_sync_fifo_output_buffer_ADC(rd_sync_fifo_output_buffer_ADC),
		.rd_sync_fifo_output_buffer_CSA(rd_sync_fifo_output_buffer_CSA),
		.V1_WL(V1_WL),
        .V2_WL(V2_WL),
        .V3_WL(V3_WL),
        .V4_WL(V4_WL),
        .V1_SL(V1_SL),
        .V2_SL(V2_SL),
        .V3_SL(V3_SL),
        .V4_SL(V4_SL),
        .V1_BL(V1_BL),
        .V2_BL(V2_BL),
        .V3_BL(V3_BL),
        .V4_BL(V4_BL),
		.V0_REF_ADC(V0_REF_ADC),
		.V1_REF_ADC(V1_REF_ADC),
		.V2_REF_ADC(V2_REF_ADC),
		.REF_CSA(REF_CSA),
		.VDD_PRE(VDD_PRE),
		//.\CSA[12] (CSA),
		.CSA(CSA),
		.ADC_OUT_0(ADC_OUT0),
		.ADC_OUT_1(ADC_OUT1),
		.ADC_OUT_2(ADC_OUT2),
		.SL(SL)
		
		
		
        );


endmodule

module top_wrapper (
`ifdef USE_POWER_PINS
vdd3v3,
vdd1v8,
vss,
`endif
clk, 
rst, 
wishbone_data_in,
wishbone_data_out,
start_operation, 
wishbone_address_bus,
wbs_we_i,
rd_sync_fifo_output_buffer_ADC,
rd_sync_fifo_output_buffer_CSA,
V1_WL,
V2_WL,
V3_WL,
V4_WL,
V1_SL,
V2_SL,
V3_SL,
V4_SL,
V1_BL,
V2_BL,
V3_BL,
V4_BL,
V0_REF_ADC,
V1_REF_ADC,
V2_REF_ADC,
REF_CSA,
VDD_PRE,
CSA,
ADC_OUT_0,
ADC_OUT_1,
ADC_OUT_2,
SL					//added by moorthii to match layout manual wiring to io_analog[10]
); 

`ifdef USE_POWER_PINS
    inout vdd3v3;
    inout vdd1v8;
    inout vss;
`endif


input clk , rst , start_operation ;

input [31:0]wishbone_data_in;
output  [31:0]wishbone_data_out;
input [31:0]wishbone_address_bus;
input wbs_we_i;

output wire ADC_OUT_0;			//added by moorthii to incorporate manual connection in gds
output wire ADC_OUT_1;			//added by moorthii to incorporate manual connection in gds
output wire ADC_OUT_2;			//added by moorthii to incorporate manual connection in gds

wire   ENABLE_WL;
wire   ENABLE_SL;
wire   ENABLE_BL;
wire   COL_SELECT;
wire   PRE ; 
wire   [1:0]CLK_EN_ADC;
wire   SAEN_CSA;

output wire   [15:0]CSA;
wire   [15:0]ADC_OUT0;
wire   [15:0]ADC_OUT1;
wire   [15:0]ADC_OUT2;

assign ADC_OUT_0 = ADC_OUT0[8];				//added by moorthii to incorporate manual connection in gds
assign ADC_OUT_1 = ADC_OUT1[8];				//added by moorthii to incorporate manual connection in gds
assign ADC_OUT_2 = ADC_OUT2[8];				//added by moorthii to incorporate manual connection in gds

wire ENABLE_CSA;


wire  [15:0]IN0_WL;
wire  [15:0]IN1_WL;
wire  [15:0]IN0_BL;
wire  [15:0]IN1_BL;
wire  [15:0]IN0_SL;
wire  [15:0]IN1_SL;

inout SL;			//Added by moorthii to match layout manual wiring to io_analog[10]



input rd_sync_fifo_output_buffer_ADC;
input rd_sync_fifo_output_buffer_CSA;

inout VDD_PRE;
inout V1_WL;
inout V2_WL;
inout V3_WL;
inout V4_WL;
inout V1_SL;
inout V2_SL;
inout V3_SL;
inout V4_SL;
inout V1_BL;
inout V2_BL;
inout V3_BL;
inout V4_BL;
inout V0_REF_ADC;
inout V1_REF_ADC;
inout V2_REF_ADC;
inout REF_CSA;


RRAM_ANALOG  U_RRAM_ANALOG( 
	.REF_CSA(REF_CSA) , 
	.V0_REF_ADC(V0_REF_ADC) , 
	.V1_REF_ADC(V1_REF_ADC) , 
	.V2_REF_ADC(V2_REF_ADC) ,   
	.V1_WL(V1_WL) , 
	.V2_WL(V2_WL) , 
	.V3_WL(V3_WL) , 
	.V4_WL(V4_WL) ,
	.V1_SL(V1_SL) , 
	.V2_SL(V2_SL) , 
	.V3_SL(V3_SL) , 
	.V4_SL(V4_SL) , 
	.V1_BL(V1_BL) , 
	.V2_BL(V2_BL) , 
	.V3_BL(V3_BL) , 
	.V4_BL(V4_BL) , 
	.ENABLE_SL(ENABLE_SL) , 
	.ENABLE_BL(ENABLE_BL) ,
	.ENABLE_WL(ENABLE_WL), 
	.IN0_WL(IN0_WL) , 
	.IN1_WL(IN1_WL) , 
	.IN0_BL(IN0_BL) , 
	.IN1_BL(IN1_BL) , 
	.IN0_SL(IN0_SL) , 
	.IN1_SL(IN1_SL) , 
	.CSA(CSA) ,
	.ENABLE_CSA(ENABLE_CSA),
	.ADC_OUT0(ADC_OUT0),
	.ADC_OUT1(ADC_OUT1),
	.ADC_OUT2(ADC_OUT2),
	.PRE(PRE),
	.CLK_EN_ADC(CLK_EN_ADC),
	.SAEN_CSA(SAEN_CSA) ,   
	.SL(SL)						//Added by moorthii to match layout
	); 


RRAM_CONTROLLER U_RRAM_CONTROLLER(
.clk(clk), 
.rst(rst), 
.wishbone_data_in(wishbone_data_in),
.wishbone_data_out(wishbone_data_out),
.start_operation(start_operation), 
.wishbone_address_bus(wishbone_address_bus),
.wbs_we_i(wbs_we_i),
.rd_sync_fifo_output_buffer_ADC(rd_sync_fifo_output_buffer_ADC),
.rd_sync_fifo_output_buffer_CSA(rd_sync_fifo_output_buffer_CSA),
.ENABLE_WL(ENABLE_WL),
.ENABLE_SL(ENABLE_SL),
.ENABLE_BL(ENABLE_BL),
.COL_SELECT(COL_SELECT),
.PRE(PRE),
.CLK_EN_ADC(CLK_EN_ADC),
.SAEN_CSA(SAEN_CSA),
.CSA(CSA),
.ADC_OUT0(ADC_OUT0),
.ADC_OUT1(ADC_OUT1),
.ADC_OUT2(ADC_OUT2),
.IN0_WL(IN0_WL),
.IN1_WL(IN1_WL),
.IN0_BL(IN0_BL),
.IN1_BL(IN1_BL),
.IN0_SL(IN0_SL),
.IN1_SL(IN1_SL)
); 



endmodule

`default_nettype wire
