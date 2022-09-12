`timescale 1ns/1ps
`define USE_POWER_PINS 

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
