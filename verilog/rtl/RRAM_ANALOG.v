module RRAM_ANALOG (VSS, VDD_HIGH , VDD_LOW , ENABLE_SL , ENABLE_BL ,ENABLE_WL,V1_WL,V2_WL,V3_WL,V4_WL,IN1_WL, IN0_WL , IN1_BL , IN0_BL , IN0_SL , IN1_SL , CSA ,ENABLE_CSA,V0_REF_ADC,V1_REF_ADC,V2_REF_ADC,ADC_OUT0,ADC_OUT1,ADC_OUT2,PRE,CLK_EN_ADC,REF_CSA,SAEN_CSA, V1_SL,V2_SL,V3_SL,V4_SL , V1_BL,V2_BL,V3_BL,V4_BL   ); 

inout VDD_HIGH;
inout VDD_LOW;
inout VSS;
input ENABLE_WL;
input V1_WL;
input V2_WL;
input V3_WL;
input V4_WL;
input [15:0]IN1_WL;
input [15:0]IN0_WL;
input ENABLE_SL;
input V1_SL;
input V2_SL;
input V3_SL;
input V4_SL;
input [15:0]IN1_SL;
input [15:0]IN0_SL;
input ENABLE_BL;
input V1_BL;
input V2_BL;
input V3_BL;
input V4_BL;
input [15:0]IN1_BL;
input [15:0]IN0_BL;
input ENABLE_CSA;
input V0_REF_ADC;
input V1_REF_ADC;
input V2_REF_ADC;
output [15:0]CSA;
output [15:0]ADC_OUT0;
output [15:0]ADC_OUT1;
output [15:0]ADC_OUT2;
input PRE;
input [1:0]CLK_EN_ADC;
input REF_CSA;
input SAEN_CSA;




endmodule

