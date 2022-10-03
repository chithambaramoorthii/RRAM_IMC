v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 4480 -610 4510 -610 {
lab=vdda1}
N 4480 -590 4510 -590 {
lab=io_analog[1]}
N 4480 -570 4510 -570 {
lab=io_analog[2]}
N 4480 -550 4510 -550 {
lab=io_analog[3]}
N 4480 -530 4510 -530 {
lab=io_analog[4]}
N 4480 -510 4510 -510 {
lab=vssd1}
N 4480 -490 4510 -490 {
lab=io_analog[5]}
N 4480 -630 4510 -630 {
lab=vccd1}
N 4480 -650 4510 -650 {
lab=io_analog[10]}
N 4480 -430 4510 -430 {
lab=vssd1}
N 4480 -410 4510 -410 {
lab=vccd1}
N 4480 -390 4510 -390 {
lab=io_analog[5]}
N 4480 -370 4510 -370 {
lab=vdda2}
N 4480 -350 4510 -350 {
lab=vssd1}
N 4480 -330 4510 -330 {
lab=vccd2}
N 4480 -310 4510 -310 {
lab=vccd2}
N 4480 -450 4510 -450 {
lab=vccd2}
N 4480 -470 4510 -470 {
lab=vdda2}
N 4480 -250 4510 -250 {
lab=io_analog[0]}
N 4480 -230 4510 -230 {
lab=gpio_analog[2]}
N 4480 -210 4510 -210 {
lab=vssd1}
N 4480 -190 4510 -190 {
lab=gpio_analog[1]}
N 4480 -170 4510 -170 {
lab=vccd1}
N 4480 -150 4510 -150 {
lab=gpio_analog[0]}
N 4480 -270 4510 -270 {
lab=CSA[15:0]}
N 4480 -290 4510 -290 {
lab=vdda1}
N 4480 -110 4510 -110 {
lab=wbs_dat_o[31:0]}
N 4150 -650 4180 -650 {
lab=wbs_we_i}
N 4150 -630 4180 -630 {
lab=wbs_we_i}
N 4150 -610 4180 -610 {
lab=wbs_we_i}
N 4150 -590 4180 -590 {
lab=wishbone_address_bus[31:0]}
N 4150 -570 4180 -570 {
lab=wbs_dat_i[31:0]}
N 4150 -530 4180 -530 {
lab=wb_rst_i}
N 4150 -510 4180 -510 {
lab=wb_clk_i}
N 4850 -280 5000 -280 {
lab=gpio_analog[5]}
N 5020 -160 5170 -160 {
lab=wbs_adr_i[19:0]}
N 5020 -120 5170 -120 {
lab=wbs_adr_i[28]}
N 5020 -80 5170 -80 {
lab=wbs_adr_i[29]}
C {devices/iopin.sym} 3240 -470 0 0 {name=p1 lab=vdda1}
C {devices/iopin.sym} 3240 -440 0 0 {name=p2 lab=vdda2}
C {devices/iopin.sym} 3240 -410 0 0 {name=p3 lab=vssa1}
C {devices/iopin.sym} 3240 -380 0 0 {name=p4 lab=vssa2}
C {devices/iopin.sym} 3240 -350 0 0 {name=p5 lab=vccd1}
C {devices/iopin.sym} 3240 -320 0 0 {name=p6 lab=vccd2}
C {devices/iopin.sym} 3240 -290 0 0 {name=p7 lab=vssd1}
C {devices/iopin.sym} 3240 -260 0 0 {name=p8 lab=vssd2}
C {devices/ipin.sym} 3290 -190 0 0 {name=p9 lab=wb_clk_i}
C {devices/ipin.sym} 3290 -160 0 0 {name=p10 lab=wb_rst_i}
C {devices/ipin.sym} 3290 -130 0 0 {name=p11 lab=wbs_stb_i}
C {devices/ipin.sym} 3290 -100 0 0 {name=p12 lab=wbs_cyc_i}
C {devices/ipin.sym} 3290 -70 0 0 {name=p13 lab=wbs_we_i}
C {devices/ipin.sym} 3290 -40 0 0 {name=p14 lab=wbs_sel_i[3:0]}
C {devices/ipin.sym} 3290 -10 0 0 {name=p15 lab=wbs_dat_i[31:0]}
C {devices/ipin.sym} 3290 20 0 0 {name=p16 lab=wbs_adr_i[31:0]}
C {devices/opin.sym} 3580 -470 0 0 {name=p17 lab=wbs_ack_o}
C {devices/opin.sym} 3580 -440 0 0 {name=p18 lab=wbs_dat_o[31:0]}
C {devices/ipin.sym} 3590 -400 0 0 {name=p19 lab=la_data_in[127:0]}
C {devices/opin.sym} 3580 -370 0 0 {name=p20 lab=la_data_out[127:0]}
C {devices/ipin.sym} 3590 -290 0 0 {name=p21 lab=io_in[26:0]}
C {devices/ipin.sym} 3590 -260 0 0 {name=p22 lab=io_in_3v3[26:0]}
C {devices/ipin.sym} 3580 20 0 0 {name=p23 lab=user_clock2}
C {devices/opin.sym} 3580 -230 0 0 {name=p24 lab=io_out[26:0]}
C {devices/opin.sym} 3580 -200 0 0 {name=p25 lab=io_oeb[26:0]}
C {devices/iopin.sym} 3550 -140 0 0 {name=p26 lab=gpio_analog[17:0]}
C {devices/iopin.sym} 3550 -110 0 0 {name=p27 lab=gpio_noesd[17:0]}
C {devices/iopin.sym} 3550 -80 0 0 {name=p29 lab=io_analog[10:0]}
C {devices/iopin.sym} 3550 -50 0 0 {name=p30 lab=io_clamp_high[2:0]}
C {devices/iopin.sym} 3550 -20 0 0 {name=p31 lab=io_clamp_low[2:0]}
C {devices/opin.sym} 3570 50 0 0 {name=p32 lab=user_irq[2:0]}
C {devices/ipin.sym} 3590 -340 0 0 {name=p28 lab=la_oenb[127:0]}
C {RRAM_IMC/xschem/top_wrapper.sym} 4330 -380 0 0 {name=x1}
C {devices/lab_pin.sym} 4510 -610 2 0 {name=l29 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 4510 -590 2 0 {name=l30 sig_type=std_logic lab=io_analog[1]}
C {devices/lab_pin.sym} 4510 -570 2 0 {name=l31 sig_type=std_logic lab=io_analog[2]}
C {devices/lab_pin.sym} 4510 -550 2 0 {name=l32 sig_type=std_logic lab=io_analog[3]}
C {devices/lab_pin.sym} 4510 -530 2 0 {name=l33 sig_type=std_logic lab=io_analog[4]}
C {devices/lab_pin.sym} 4510 -510 2 0 {name=l34 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 4510 -490 2 0 {name=l35 sig_type=std_logic lab=io_analog[5]}
C {devices/lab_pin.sym} 4510 -630 2 0 {name=l67 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 4510 -650 2 0 {name=l68 sig_type=std_logic lab=io_analog[10]}
C {devices/lab_pin.sym} 4510 -430 2 0 {name=l1 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 4510 -410 2 0 {name=l2 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 4510 -390 2 0 {name=l3 sig_type=std_logic lab=io_analog[5]}
C {devices/lab_pin.sym} 4510 -370 2 0 {name=l4 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} 4510 -350 2 0 {name=l5 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 4510 -330 2 0 {name=l6 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 4510 -310 2 0 {name=l7 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 4510 -450 2 0 {name=l8 sig_type=std_logic lab=vccd2}
C {devices/lab_pin.sym} 4510 -470 2 0 {name=l9 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} 4510 -250 2 0 {name=l10 sig_type=std_logic lab=io_analog[0]}
C {devices/lab_pin.sym} 4510 -230 2 0 {name=l11 sig_type=std_logic lab=gpio_analog[2]}
C {devices/lab_pin.sym} 4510 -210 2 0 {name=l12 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 4510 -190 2 0 {name=l13 sig_type=std_logic lab=gpio_analog[1]}
C {devices/lab_pin.sym} 4510 -170 2 0 {name=l14 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 4510 -150 2 0 {name=l15 sig_type=std_logic lab=gpio_analog[0]}
C {devices/lab_pin.sym} 4510 -270 2 0 {name=l17 sig_type=std_logic lab=CSA[15:0]}
C {devices/lab_pin.sym} 4510 -290 2 0 {name=l18 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 4510 -110 2 0 {name=l19 sig_type=std_logic lab=wbs_dat_o[31:0]}
C {devices/lab_pin.sym} 4150 -650 0 0 {name=l20 sig_type=std_logic lab=wbs_we_i}
C {devices/lab_pin.sym} 4150 -630 0 0 {name=l21 sig_type=std_logic lab=wbs_we_i}
C {devices/lab_pin.sym} 4150 -610 0 0 {name=l22 sig_type=std_logic lab=wbs_we_i}
C {devices/lab_pin.sym} 4150 -590 0 0 {name=l23 sig_type=std_logic lab=wishbone_address_bus[31:0]}
C {devices/lab_pin.sym} 4150 -570 0 0 {name=l24 sig_type=std_logic lab=wbs_dat_i[31:0]}
C {devices/lab_pin.sym} 4150 -530 0 0 {name=l26 sig_type=std_logic lab=wb_rst_i}
C {devices/lab_pin.sym} 4150 -510 0 0 {name=l27 sig_type=std_logic lab=wb_clk_i}
C {devices/lab_pin.sym} 4850 -280 0 0 {name=l16 sig_type=std_logic lab=CSA[12]}
C {devices/lab_pin.sym} 5000 -280 2 0 {name=l25 sig_type=std_logic lab=gpio_analog[5]}
C {devices/lab_pin.sym} 5020 -160 0 0 {name=l28 sig_type=std_logic lab=wishbone_address_bus[19:0]}
C {devices/lab_pin.sym} 5170 -160 2 0 {name=l36 sig_type=std_logic lab=wbs_adr_i[19:0]}
C {devices/lab_pin.sym} 5020 -120 0 0 {name=l37 sig_type=std_logic lab=wishbone_address_bus[30]}
C {devices/lab_pin.sym} 5170 -120 2 0 {name=l38 sig_type=std_logic lab=wbs_adr_i[28]}
C {devices/lab_pin.sym} 5020 -80 0 0 {name=l39 sig_type=std_logic lab=wishbone_address_bus[31]}
C {devices/lab_pin.sym} 5170 -80 2 0 {name=l40 sig_type=std_logic lab=wbs_adr_i[29]}
