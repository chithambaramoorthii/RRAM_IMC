v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1010 -1060 1040 -1060 {
lab=SAEN_CSA}
N 1010 -1040 1040 -1040 {
lab=REF_CSA}
N 1010 -1020 1040 -1020 {
lab=CLK_EN_ADC[1:0]}
N 1010 -1000 1040 -1000 {
lab=PRE}
N 1010 -980 1040 -980 {
lab=V2_REF_ADC}
N 1010 -960 1040 -960 {
lab=V1_REF_ADC}
N 1010 -940 1040 -940 {
lab=V0_REF_ADC}
N 1010 -920 1040 -920 {
lab=ENABLE_CSA}
N 1010 -900 1040 -900 {
lab=IN0_BL[15:0]}
N 1010 -880 1040 -880 {
lab=IN1_BL[15:0]}
N 1010 -860 1040 -860 {
lab=V4_BL}
N 1010 -840 1040 -840 {
lab=V3_BL}
N 1010 -820 1040 -820 {
lab=V2_BL}
N 1010 -800 1040 -800 {
lab=V1_BL}
N 1010 -780 1040 -780 {
lab=ENABLE_BL}
N 1010 -760 1040 -760 {
lab=IN0_SL[15:0]}
N 1010 -740 1040 -740 {
lab=IN1_SL[15:0]}
N 1010 -720 1040 -720 {
lab=V4_SL}
N 1010 -700 1040 -700 {
lab=V3_SL}
N 1010 -680 1040 -680 {
lab=V2_SL}
N 1010 -660 1040 -660 {
lab=V1_SL}
N 1010 -640 1040 -640 {
lab=ENABLE_SL}
N 1010 -620 1040 -620 {
lab=IN0_WL[15:0]}
N 1010 -600 1040 -600 {
lab=IN1_WL[15:0]}
N 1010 -580 1040 -580 {
lab=V4_WL}
N 1010 -560 1040 -560 {
lab=V3_WL}
N 1010 -540 1040 -540 {
lab=V2_WL}
N 1010 -520 1040 -520 {
lab=V1_WL}
N 1010 -500 1040 -500 {
lab=ENABLE_WL}
N 1340 -1020 1370 -1020 {
lab=ADC_OUT2[15:0]}
N 1340 -1000 1370 -1000 {
lab=ADC_OUT1[15:0]}
N 1340 -980 1370 -980 {
lab=VSS}
N 1340 -960 1370 -960 {
lab=ADC_OUT0[15:0]}
N 1340 -940 1370 -940 {
lab=VDD_LOW}
N 1340 -920 1370 -920 {
lab=CSA[15:0]}
N 1340 -900 1370 -900 {
lab=VDD_HIGH}
N 1930 -990 1960 -990 {
lab=rd_sync_fifo_output_buffer_CSA}
N 1930 -970 1960 -970 {
lab=rd_sync_fifo_output_buffer_ADC}
N 1930 -950 1960 -950 {
lab=ENABLE_CSA}
N 1930 -930 1960 -930 {
lab=ADC_OUT2[15:0]}
N 1930 -910 1960 -910 {
lab=ADC_OUT1[15:0]}
N 1930 -890 1960 -890 {
lab=ADC_OUT0[15:0]}
N 1930 -870 1960 -870 {
lab=CSA[15:0]}
N 1930 -850 1960 -850 {
lab=wbs_we_i}
N 1930 -830 1960 -830 {
lab=wishbone_address_bus[31:0]}
N 1930 -810 1960 -810 {
lab=wishbone_data_in[31:0]}
N 1930 -790 1960 -790 {
lab=start_operation}
N 1930 -770 1960 -770 {
lab=rst}
N 1930 -750 1960 -750 {
lab=clk}
N 2260 -990 2290 -990 {
lab=IN1_SL[15:0]}
N 2260 -970 2290 -970 {
lab=IN0_SL[15:0]}
N 2260 -950 2290 -950 {
lab=IN1_BL[15:0]}
N 2260 -930 2290 -930 {
lab=IN0_BL[15:0]}
N 2260 -910 2290 -910 {
lab=IN1_WL[15:0]}
N 2260 -890 2290 -890 {
lab=IN0_WL[15:0]}
N 2260 -870 2290 -870 {
lab=SAEN_CSA}
N 2260 -850 2290 -850 {
lab=CLK_EN_ADC[1:0]}
N 2260 -830 2290 -830 {
lab=PRE}
N 2260 -810 2290 -810 {
lab=COL_SELECT}
N 2260 -790 2290 -790 {
lab=ENABLE_BL}
N 2260 -770 2290 -770 {
lab=vdd3v3}
N 2260 -750 2290 -750 {
lab=ENABLE_SL}
N 2260 -730 2290 -730 {
lab=vdd1v8}
N 2260 -710 2290 -710 {
lab=ENABLE_WL}
N 2260 -690 2290 -690 {
lab=VSS}
N 2260 -670 2290 -670 {
lab=wishbone_data_out[31:0]}
N 1340 -1040 1370 -1040 {
lab=VDD_PRE}
N 1340 -1060 1370 -1060 {
lab=SL}
C {devices/ipin.sym} 100 -90 0 0 {name=p5 lab=clk}
C {devices/ipin.sym} 100 -130 0 0 {name=p6 lab=rst}
C {devices/iopin.sym} 190 -90 0 0 {name=p33 lab=vdd3v3}
C {devices/opin.sym} 410 -90 0 0 {name=p35 lab=wishbone_data_out[31:0]}
C {devices/opin.sym} 410 -120 0 0 {name=p36 lab=ADC_OUT0[8]}
C {devices/iopin.sym} 190 -130 0 0 {name=p14 lab=vdd1v8}
C {devices/ipin.sym} 100 -170 0 0 {name=p1 lab=start_operation}
C {devices/ipin.sym} 100 -210 0 0 {name=p2 lab=wishbone_data_in[31:0]}
C {devices/ipin.sym} 100 -250 0 0 {name=p3 lab=wishbone_address_bus[31:0]}
C {devices/ipin.sym} 100 -290 0 0 {name=p4 lab=wbs_we_i}
C {devices/iopin.sym} 190 -170 0 0 {name=p8 lab=VSS}
C {devices/iopin.sym} 190 -210 0 0 {name=p9 lab=VDD_PRE}
C {devices/iopin.sym} 190 -250 0 0 {name=p10 lab=V1_WL}
C {devices/iopin.sym} 190 -290 0 0 {name=p11 lab=V2_WL}
C {devices/iopin.sym} 190 -330 0 0 {name=p12 lab=V3_WL}
C {devices/iopin.sym} 190 -370 0 0 {name=p13 lab=V4_WL}
C {devices/iopin.sym} 190 -410 0 0 {name=p15 lab=V1_SL}
C {devices/iopin.sym} 190 -450 0 0 {name=p16 lab=V2_SL}
C {devices/iopin.sym} 190 -490 0 0 {name=p17 lab=V3_SL}
C {devices/iopin.sym} 190 -530 0 0 {name=p18 lab=V4_SL}
C {devices/iopin.sym} 190 -570 0 0 {name=p19 lab=V1_BL}
C {devices/iopin.sym} 190 -610 0 0 {name=p20 lab=V2_BL}
C {devices/iopin.sym} 190 -650 0 0 {name=p21 lab=V3_BL}
C {devices/iopin.sym} 190 -690 0 0 {name=p22 lab=V4_BL}
C {devices/iopin.sym} 190 -730 0 0 {name=p23 lab=V0_REF_ADC}
C {devices/iopin.sym} 190 -770 0 0 {name=p24 lab=V1_REF_ADC}
C {devices/iopin.sym} 190 -810 0 0 {name=p25 lab=V2_REF_ADC}
C {devices/iopin.sym} 190 -850 0 0 {name=p26 lab=REF_CSA}
C {devices/opin.sym} 410 -150 0 0 {name=p27 lab=ADC_OUT1[8]}
C {devices/opin.sym} 410 -180 0 0 {name=p28 lab=ADC_OUT2[8]}
C {devices/opin.sym} 410 -210 0 0 {name=p29 lab=CSA[15:0]}
C {devices/ipin.sym} 100 -330 0 0 {name=p30 lab=rd_sync_fifo_output_buffer_ADC}
C {devices/ipin.sym} 100 -370 0 0 {name=p31 lab=rd_sync_fifo_output_buffer_CSA}
C {RRAM_IMC/xschem/RRAM_ANALOG.sym} 1190 -780 0 0 {name=x1}
C {RRAM_IMC/xschem/RRAM_CONTROLLER.sym} 2110 -830 0 0 {name=x2}
C {devices/lab_pin.sym} 1010 -1060 0 0 {name=l1 sig_type=std_logic lab=SAEN_CSA}
C {devices/lab_pin.sym} 1010 -1040 0 0 {name=l2 sig_type=std_logic lab=REF_CSA}
C {devices/lab_pin.sym} 1010 -1020 0 0 {name=l3 sig_type=std_logic lab=CLK_EN_ADC[1:0]}
C {devices/lab_pin.sym} 1010 -1000 0 0 {name=l4 sig_type=std_logic lab=PRE}
C {devices/lab_pin.sym} 1010 -980 0 0 {name=l5 sig_type=std_logic lab=V2_REF_ADC}
C {devices/lab_pin.sym} 1010 -960 0 0 {name=l6 sig_type=std_logic lab=V1_REF_ADC}
C {devices/lab_pin.sym} 1010 -940 0 0 {name=l7 sig_type=std_logic lab=V0_REF_ADC}
C {devices/lab_pin.sym} 1010 -920 0 0 {name=l8 sig_type=std_logic lab=ENABLE_CSA}
C {devices/lab_pin.sym} 1010 -900 0 0 {name=l9 sig_type=std_logic lab=IN0_BL[15:0]}
C {devices/lab_pin.sym} 1010 -880 0 0 {name=l10 sig_type=std_logic lab=IN1_BL[15:0]}
C {devices/lab_pin.sym} 1010 -860 0 0 {name=l11 sig_type=std_logic lab=V4_BL}
C {devices/lab_pin.sym} 1010 -840 0 0 {name=l12 sig_type=std_logic lab=V3_BL}
C {devices/lab_pin.sym} 1010 -820 0 0 {name=l13 sig_type=std_logic lab=V2_BL}
C {devices/lab_pin.sym} 1010 -800 0 0 {name=l14 sig_type=std_logic lab=V1_BL}
C {devices/lab_pin.sym} 1010 -780 0 0 {name=l15 sig_type=std_logic lab=ENABLE_BL}
C {devices/lab_pin.sym} 1010 -760 0 0 {name=l16 sig_type=std_logic lab=IN0_SL[15:0]}
C {devices/lab_pin.sym} 1010 -740 0 0 {name=l17 sig_type=std_logic lab=IN1_SL[15:0]}
C {devices/lab_pin.sym} 1010 -720 0 0 {name=l18 sig_type=std_logic lab=V4_SL}
C {devices/lab_pin.sym} 1010 -700 0 0 {name=l19 sig_type=std_logic lab=V3_SL}
C {devices/lab_pin.sym} 1010 -680 0 0 {name=l20 sig_type=std_logic lab=V2_SL}
C {devices/lab_pin.sym} 1010 -660 0 0 {name=l21 sig_type=std_logic lab=V1_SL}
C {devices/lab_pin.sym} 1010 -640 0 0 {name=l22 sig_type=std_logic lab=ENABLE_SL}
C {devices/lab_pin.sym} 1010 -620 0 0 {name=l23 sig_type=std_logic lab=IN0_WL[15:0]}
C {devices/lab_pin.sym} 1010 -600 0 0 {name=l24 sig_type=std_logic lab=IN1_WL[15:0]}
C {devices/lab_pin.sym} 1010 -580 0 0 {name=l25 sig_type=std_logic lab=V4_WL}
C {devices/lab_pin.sym} 1010 -560 0 0 {name=l26 sig_type=std_logic lab=V3_WL}
C {devices/lab_pin.sym} 1010 -540 0 0 {name=l27 sig_type=std_logic lab=V2_WL}
C {devices/lab_pin.sym} 1010 -520 0 0 {name=l28 sig_type=std_logic lab=V1_WL}
C {devices/lab_pin.sym} 1370 -1020 2 0 {name=l29 sig_type=std_logic lab=ADC_OUT2[15:0]}
C {devices/lab_pin.sym} 1370 -1000 2 0 {name=l30 sig_type=std_logic lab=ADC_OUT1[15:0]}
C {devices/lab_pin.sym} 1370 -980 2 0 {name=l31 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1370 -960 2 0 {name=l32 sig_type=std_logic lab=ADC_OUT0[15:0]}
C {devices/lab_pin.sym} 1370 -940 2 0 {name=l33 sig_type=std_logic lab=VDD_LOW}
C {devices/lab_pin.sym} 1370 -920 2 0 {name=l34 sig_type=std_logic lab=CSA[15:0]}
C {devices/lab_pin.sym} 1370 -900 2 0 {name=l35 sig_type=std_logic lab=VDD_HIGH}
C {devices/lab_pin.sym} 1010 -500 0 0 {name=l36 sig_type=std_logic lab=ENABLE_WL}
C {devices/lab_pin.sym} 1930 -990 0 0 {name=l37 sig_type=std_logic lab=rd_sync_fifo_output_buffer_CSA}
C {devices/lab_pin.sym} 1930 -970 0 0 {name=l38 sig_type=std_logic lab=rd_sync_fifo_output_buffer_ADC}
C {devices/lab_pin.sym} 1930 -950 0 0 {name=l39 sig_type=std_logic lab=ENABLE_CSA}
C {devices/lab_pin.sym} 1930 -930 0 0 {name=l40 sig_type=std_logic lab=ADC_OUT2[15:0]}
C {devices/lab_pin.sym} 1930 -910 0 0 {name=l41 sig_type=std_logic lab=ADC_OUT1[15:0]}
C {devices/lab_pin.sym} 1930 -890 0 0 {name=l42 sig_type=std_logic lab=ADC_OUT0[15:0]}
C {devices/lab_pin.sym} 1930 -870 0 0 {name=l43 sig_type=std_logic lab=CSA[15:0]}
C {devices/lab_pin.sym} 1930 -850 0 0 {name=l44 sig_type=std_logic lab=wbs_we_i}
C {devices/lab_pin.sym} 1930 -830 0 0 {name=l45 sig_type=std_logic lab=wishbone_address_bus[31:0]}
C {devices/lab_pin.sym} 1930 -810 0 0 {name=l46 sig_type=std_logic lab=wishbone_data_in[31:0]}
C {devices/lab_pin.sym} 1930 -790 0 0 {name=l47 sig_type=std_logic lab=start_operation}
C {devices/lab_pin.sym} 1930 -770 0 0 {name=l48 sig_type=std_logic lab=rst}
C {devices/lab_pin.sym} 1930 -750 0 0 {name=l49 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 2290 -990 2 0 {name=l50 sig_type=std_logic lab=IN1_SL[15:0]}
C {devices/lab_pin.sym} 2290 -970 2 0 {name=l51 sig_type=std_logic lab=IN0_SL[15:0]}
C {devices/lab_pin.sym} 2290 -950 2 0 {name=l52 sig_type=std_logic lab=IN1_BL[15:0]}
C {devices/lab_pin.sym} 2290 -930 2 0 {name=l53 sig_type=std_logic lab=IN0_BL[15:0]}
C {devices/lab_pin.sym} 2290 -910 2 0 {name=l54 sig_type=std_logic lab=IN1_WL[15:0]}
C {devices/lab_pin.sym} 2290 -890 2 0 {name=l55 sig_type=std_logic lab=IN0_WL[15:0]}
C {devices/lab_pin.sym} 2290 -870 2 0 {name=l56 sig_type=std_logic lab=SAEN_CSA}
C {devices/lab_pin.sym} 2290 -850 2 0 {name=l57 sig_type=std_logic lab=CLK_EN_ADC[1:0]}
C {devices/lab_pin.sym} 2290 -830 2 0 {name=l58 sig_type=std_logic lab=PRE}
C {devices/lab_pin.sym} 2290 -810 2 0 {name=l59 sig_type=std_logic lab=COL_SELECT}
C {devices/lab_pin.sym} 2290 -790 2 0 {name=l60 sig_type=std_logic lab=ENABLE_BL}
C {devices/lab_pin.sym} 2290 -770 2 0 {name=l61 sig_type=std_logic lab=vdd3v3}
C {devices/lab_pin.sym} 2290 -750 2 0 {name=l62 sig_type=std_logic lab=ENABLE_SL}
C {devices/lab_pin.sym} 2290 -730 2 0 {name=l63 sig_type=std_logic lab=vdd1v8}
C {devices/lab_pin.sym} 2290 -710 2 0 {name=l64 sig_type=std_logic lab=ENABLE_WL}
C {devices/lab_pin.sym} 2290 -690 2 0 {name=l65 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2290 -670 2 0 {name=l66 sig_type=std_logic lab=wishbone_data_out[31:0]}
C {devices/lab_pin.sym} 1370 -1040 2 0 {name=l67 sig_type=std_logic lab=VDD_PRE}
C {devices/iopin.sym} 190 -890 0 0 {name=p32 lab=VDD_HIGH}
C {devices/iopin.sym} 190 -930 0 0 {name=p34 lab=VDD_LOW}
C {devices/lab_pin.sym} 1370 -1060 2 0 {name=l68 sig_type=std_logic lab=SL}
C {devices/iopin.sym} 190 -970 0 0 {name=p7 lab=SL}
