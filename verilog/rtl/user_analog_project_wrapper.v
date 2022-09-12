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
 *-------------------------------------------------------------
 *
 * user_analog_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user analog project.
 *
 *-------------------------------------------------------------
 */

module user_analog_project_wrapper (
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

    /* GPIOs.  There are 27 GPIOs, on either side of the analog.
     * These have the following mapping to the GPIO padframe pins
     * and memory-mapped registers, since the numbering remains the
     * same as caravel but skips over the analog I/O:
     *
     * io_in/out/oeb/in_3v3 [26:14]  <--->  mprj_io[37:25]
     * io_in/out/oeb/in_3v3 [13:0]   <--->  mprj_io[13:0]	
     *
     * When the GPIOs are configured by the Management SoC for
     * user use, they have three basic bidirectional controls:
     * in, out, and oeb (output enable, sense inverted).  For
     * analog projects, a 3.3V copy of the signal input is
     * available.  out and oeb must be 1.8V signals.
     */

    input  [`MPRJ_IO_PADS-`ANALOG_PADS-1:0] io_in,
    input  [`MPRJ_IO_PADS-`ANALOG_PADS-1:0] io_in_3v3,
    output [`MPRJ_IO_PADS-`ANALOG_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-`ANALOG_PADS-1:0] io_oeb,

    /* Analog (direct connection to GPIO pad---not for high voltage or
     * high frequency use).  The management SoC must turn off both
     * input and output buffers on these GPIOs to allow analog access.
     * These signals may drive a voltage up to the value of VDDIO
     * (3.3V typical, 5.5V maximum).
     * 
     * Note that analog I/O is not available on the 7 lowest-numbered
     * GPIO pads, and so the analog_io indexing is offset from the
     * GPIO indexing by 7, as follows:
     *
     * gpio_analog/noesd [17:7]  <--->  mprj_io[35:25]
     * gpio_analog/noesd [6:0]   <--->  mprj_io[13:7]	
     *
     */
    
    inout [`MPRJ_IO_PADS-`ANALOG_PADS-10:0] gpio_analog,
    inout [`MPRJ_IO_PADS-`ANALOG_PADS-10:0] gpio_noesd,

    /* Analog signals, direct through to pad.  These have no ESD at all,
     * so ESD protection is the responsibility of the designer.
     *
     * user_analog[10:0]  <--->  mprj_io[24:14]
     *
     */
    inout [`ANALOG_PADS-1:0] io_analog,

    /* Additional power supply ESD clamps, one per analog pad.  The
     * high side should be connected to a 3.3-5.5V power supply.
     * The low side should be connected to ground.
     *
     * clamp_high[2:0]   <--->  mprj_io[20:18]
     * clamp_low[2:0]    <--->  mprj_io[20:18]
     *
     */
    inout [2:0] io_clamp_high,
    inout [2:0] io_clamp_low,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/

top_wrapper uut(
    .wishbone_address_bus[0](wbs_adr_i[0])
    );

user_analog_proj_example mprj (
    `ifdef USE_POWER_PINS
        .vdda1(vdda1),  // User area 1 3.3V power
        .vdda2(vdda2),  // User area 2 3.3V power
        .vssa1(vssa1),  // User area 1 analog ground
        .vssa2(vssa2),  // User area 2 analog ground
        .vccd1(vccd1),  // User area 1 1.8V power
        .vccd2(vccd2),  // User area 2 1.8V power
        .vssd1(vssd1),  // User area 1 digital ground
        .vssd2(vssd2),  // User area 2 digital ground
    `endif

    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),

    // MGMT SoC Wishbone Slave

    .wbs_cyc_i(wbs_cyc_i),
    .wbs_stb_i(wbs_stb_i),
    .wbs_we_i(wbs_we_i),
    .wbs_sel_i(wbs_sel_i),
    .wbs_adr_i(wbs_adr_i),
    .wbs_dat_i(wbs_dat_i),
    .wbs_ack_o(wbs_ack_o),
    .wbs_dat_o(wbs_dat_o),

    // Logic Analyzer

    .la_data_in(la_data_in),
    .la_data_out(la_data_out),
    .la_oenb (la_oenb),

    // IO Pads
    .io_in (io_in),
    .io_in_3v3 (io_in_3v3),
    .io_out(io_out),
    .io_oeb(io_oeb),

    // GPIO-analog
    .gpio_analog(gpio_analog),
    .gpio_noesd(gpio_noesd),

    // Dedicated analog
    .io_analog(io_analog),
    .io_clamp_high(io_clamp_high),
    .io_clamp_low(io_clamp_low),

    // Clock
    .user_clock2(user_clock2),

    // IRQ
    .irq(user_irq)
);

endmodule	// user_analog_project_wrapper


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
CSA
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

wire ENABLE_CSA;


wire  [15:0]IN0_WL;
wire  [15:0]IN1_WL;
wire  [15:0]IN0_BL;
wire  [15:0]IN1_BL;
wire  [15:0]IN0_SL;
wire  [15:0]IN1_SL;



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


RRAM_ANALOG  U_RRAM_ANALOG( .REF_CSA(REF_CSA) , .V0_REF_ADC(V0_REF_ADC) , .V1_REF_ADC(V1_REF_ADC) , .V2_REF_ADC(V2_REF_ADC) ,   .V1_WL(V1_WL) , .V2_WL(V2_WL) , .V3_WL(V3_WL) , .V4_WL(V4_WL) ,.V1_SL(V1_SL) , .V2_SL(V2_SL) , .V3_SL(V3_SL) , .V4_SL(V4_SL), .V1_BL(V1_BL) , .V2_BL(V2_BL) , .V3_BL(V3_BL) , .V4_BL(V4_BL) , .ENABLE_SL(ENABLE_SL) , .ENABLE_BL(ENABLE_BL) ,.ENABLE_WL(ENABLE_WL), .IN0_WL(IN0_WL) , .IN1_WL(IN1_WL) , .IN0_BL(IN0_BL) , .IN1_BL(IN1_BL) , .IN0_SL(IN0_SL) , .IN1_SL(IN1_SL) , .CSA(CSA) ,.ENABLE_CSA(ENABLE_CSA),.ADC_OUT0(ADC_OUT0),.ADC_OUT1(ADC_OUT1),.ADC_OUT2(ADC_OUT2),.PRE(PRE),.CLK_EN_ADC(CLK_EN_ADC),.SAEN_CSA(SAEN_CSA)   ); 


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
