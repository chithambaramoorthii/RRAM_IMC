module RRAM_CONTROLLER (
 vdd3v3,
 vdd1v8,
 vss,
clk, 
rst, 
wishbone_data_in,
wishbone_data_out,
start_operation, 
wishbone_address_bus,
wbs_we_i,
rd_sync_fifo_output_buffer_ADC,
rd_sync_fifo_output_buffer_CSA,
ENABLE_WL,
ENABLE_SL,
ENABLE_BL,
ENABLE_CSA,
COL_SELECT,
PRE  ,
CLK_EN_ADC,
SAEN_CSA,
CSA,
ADC_OUT0,
ADC_OUT1,
ADC_OUT2,
IN0_WL,
IN1_WL,
IN0_BL,
IN1_BL,
IN0_SL,
IN1_SL,
ADC_OUTPUT
); 

inout vdd3v3;
inout vdd1v8;
inout vss;
input		clk , rst , start_operation ;

input [31:0]wishbone_data_in;
output reg [31:0]wishbone_data_out;
input [31:0]wishbone_address_bus;
input wbs_we_i;


output reg  ENABLE_WL;
output reg  ENABLE_SL;
output reg  ENABLE_BL;
output reg  ENABLE_CSA;
output reg  COL_SELECT;
output reg  PRE ; 
output reg  [1:0]CLK_EN_ADC;
output reg  SAEN_CSA;

input  [15:0]CSA;
input  [15:0]ADC_OUT0;
input  [15:0]ADC_OUT1;
input  [15:0]ADC_OUT2;




output reg [15:0]IN0_WL;
output reg [15:0]IN1_WL;
output reg [15:0]IN0_BL;
output reg [15:0]IN1_BL;
output reg [15:0]IN0_SL;
output reg [15:0]IN1_SL;


input [31:0] ADC_OUTPUT;



input rd_sync_fifo_output_buffer_ADC;
input rd_sync_fifo_output_buffer_CSA;

endmodule
