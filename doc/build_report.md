**Yosys**

```
Warning: Yosys has only limited support for tri-state logic at the moment. (sdram.v:103)
Warning: Yosys has only limited support for tri-state logic at the moment. (spi_ide.v:67)
```

**NextPNR**

```
Info: constraining clock net 'clk_25mhz' to 25.00 MHz

Info: Logic utilisation before packing:
Info:     Total LUT4s:      5141/24288    21%
Info:         logic LUTs:   4495/24288    18%
Info:         carry LUTs:    214/24288     0%
Info:           RAM LUTs:    288/12144     2%
Info:          RAMW LUTs:    144/ 6072     2%

Info:      Total DFFs:      1184/24288     4%

Info: Packing IOs..
Info: pin 'clk_25mhz$tr_io' constrained to Bel 'X0/Y26/PIOA'.
Info: pin 'ftdi_rxd$tr_io' constrained to Bel 'X0/Y35/PIOC'.
Info: pin 'ftdi_txd$tr_io' constrained to Bel 'X0/Y44/PIOB'.
Info: pin 'sdram_casn$tr_io' constrained to Bel 'X72/Y44/PIOA'.
Info: pin 'sdram_cke$tr_io' constrained to Bel 'X72/Y17/PIOC'.
Info: pin 'sdram_clk$tr_io' constrained to Bel 'X72/Y17/PIOB'.
Info: pin 'sdram_csn$tr_io' constrained to Bel 'X72/Y41/PIOA'.
Info: pin 'sdram_rasn$tr_io' constrained to Bel 'X72/Y41/PIOB'.
Info: pin 'sdram_wen$tr_io' constrained to Bel 'X72/Y41/PIOC'.
Info: pin 'wifi_gpio16$tr_io' constrained to Bel 'X0/Y44/PIOC'.
Info: pin 'wifi_gpio17$tr_io' constrained to Bel 'X0/Y41/PIOA'.
Info: pin 'wifi_gpio5$tr_io' constrained to Bel 'X0/Y38/PIOC'.
Info: pin 'led[5]$tr_io' constrained to Bel 'X0/Y23/PIOD'.
Info: pin 'led[3]$tr_io' constrained to Bel 'X0/Y17/PIOC'.
Info: pin 'led[4]$tr_io' constrained to Bel 'X0/Y17/PIOB'.
Info: pin 'sd_d[1]$tr_io' constrained to Bel 'X0/Y32/PIOC'.
Info: pin 'btn[0]$tr_io' constrained to Bel 'X6/Y0/PIOB'.
Info: pin 'led[7]$tr_io' constrained to Bel 'X0/Y20/PIOD'.
Info: pin 'led[1]$tr_io' constrained to Bel 'X0/Y14/PIOD'.
Info: pin 'led[0]$tr_io' constrained to Bel 'X0/Y14/PIOC'.
Info: $sd_d[2]$iobuf_i: sd_d_$_TBUF__Y.Y
Info: pin 'sd_d[2]$tr_io' constrained to Bel 'X0/Y32/PIOD'.
Info: $sdram_d[0]$iobuf_i: sdram_d_$_TBUF__Y_15.Y
Info: pin 'sdram_d[0]$tr_io' constrained to Bel 'X72/Y11/PIOD'.
Info: $sdram_d[10]$iobuf_i: sdram_d_$_TBUF__Y_5.Y
Info: pin 'sdram_d[10]$tr_io' constrained to Bel 'X72/Y14/PIOB'.
Info: $sdram_d[11]$iobuf_i: sdram_d_$_TBUF__Y_4.Y
Info: pin 'sdram_d[11]$tr_io' constrained to Bel 'X72/Y14/PIOA'.
Info: $sdram_d[12]$iobuf_i: sdram_d_$_TBUF__Y_3.Y
Info: pin 'sdram_d[12]$tr_io' constrained to Bel 'X72/Y5/PIOC'.
Info: $sdram_d[13]$iobuf_i: sdram_d_$_TBUF__Y_2.Y
Info: pin 'sdram_d[13]$tr_io' constrained to Bel 'X72/Y5/PIOD'.
Info: $sdram_d[14]$iobuf_i: sdram_d_$_TBUF__Y_1.Y
Info: pin 'sdram_d[14]$tr_io' constrained to Bel 'X72/Y20/PIOC'.
Info: $sdram_d[15]$iobuf_i: sdram_d_$_TBUF__Y.Y
Info: pin 'sdram_d[15]$tr_io' constrained to Bel 'X72/Y11/PIOC'.
Info: $sdram_d[1]$iobuf_i: sdram_d_$_TBUF__Y_14.Y
Info: pin 'sdram_d[1]$tr_io' constrained to Bel 'X72/Y29/PIOC'.
Info: $sdram_d[2]$iobuf_i: sdram_d_$_TBUF__Y_13.Y
Info: pin 'sdram_d[2]$tr_io' constrained to Bel 'X72/Y29/PIOD'.
Info: $sdram_d[3]$iobuf_i: sdram_d_$_TBUF__Y_12.Y
Info: pin 'sdram_d[3]$tr_io' constrained to Bel 'X72/Y32/PIOC'.
Info: $sdram_d[4]$iobuf_i: sdram_d_$_TBUF__Y_11.Y
Info: pin 'sdram_d[4]$tr_io' constrained to Bel 'X72/Y38/PIOD'.
Info: $sdram_d[5]$iobuf_i: sdram_d_$_TBUF__Y_10.Y
Info: pin 'sdram_d[5]$tr_io' constrained to Bel 'X72/Y44/PIOD'.
Info: $sdram_d[6]$iobuf_i: sdram_d_$_TBUF__Y_9.Y
Info: pin 'sdram_d[6]$tr_io' constrained to Bel 'X72/Y47/PIOD'.
Info: $sdram_d[7]$iobuf_i: sdram_d_$_TBUF__Y_8.Y
Info: pin 'sdram_d[7]$tr_io' constrained to Bel 'X72/Y41/PIOD'.
Info: $sdram_d[8]$iobuf_i: sdram_d_$_TBUF__Y_7.Y
Info: pin 'sdram_d[8]$tr_io' constrained to Bel 'X72/Y14/PIOD'.
Info: $sdram_d[9]$iobuf_i: sdram_d_$_TBUF__Y_6.Y
Info: pin 'sdram_d[9]$tr_io' constrained to Bel 'X72/Y14/PIOC'.
Info: pin 'sdram_a[12]$tr_io' constrained to Bel 'X72/Y20/PIOA'.
Info: pin 'sdram_a[11]$tr_io' constrained to Bel 'X72/Y17/PIOD'.
Info: pin 'sdram_a[2]$tr_io' constrained to Bel 'X72/Y26/PIOA'.
Info: pin 'sdram_a[1]$tr_io' constrained to Bel 'X72/Y26/PIOD'.
Info: pin 'sdram_a[0]$tr_io' constrained to Bel 'X72/Y26/PIOB'.
Info: pin 'sdram_a[10]$tr_io' constrained to Bel 'X72/Y38/PIOA'.
Info: pin 'sdram_a[9]$tr_io' constrained to Bel 'X72/Y20/PIOB'.
Info: pin 'sdram_a[8]$tr_io' constrained to Bel 'X72/Y23/PIOA'.
Info: pin 'sdram_a[7]$tr_io' constrained to Bel 'X72/Y23/PIOC'.
Info: pin 'sdram_a[6]$tr_io' constrained to Bel 'X72/Y20/PIOD'.
Info: pin 'sdram_a[5]$tr_io' constrained to Bel 'X72/Y23/PIOB'.
Info: pin 'sdram_a[4]$tr_io' constrained to Bel 'X72/Y23/PIOD'.
Info: pin 'sdram_a[3]$tr_io' constrained to Bel 'X72/Y26/PIOC'.
Info: pin 'sdram_ba[1]$tr_io' constrained to Bel 'X72/Y38/PIOB'.
Info: pin 'sdram_ba[0]$tr_io' constrained to Bel 'X72/Y38/PIOC'.
Info: pin 'sdram_dqm[1]$tr_io' constrained to Bel 'X72/Y17/PIOA'.
Info: pin 'sdram_dqm[0]$tr_io' constrained to Bel 'X72/Y44/PIOC'.
Info: pin 'led[2]$tr_io' constrained to Bel 'X0/Y17/PIOA'.
Info: pin 'led[6]$tr_io' constrained to Bel 'X0/Y17/PIOD'.
Info: pin 'btn[1]$tr_io' constrained to Bel 'X4/Y50/PIOA'.
Info: pin 'btn[2]$tr_io' constrained to Bel 'X4/Y50/PIOB'.
Info: pin 'btn[3]$tr_io' constrained to Bel 'X72/Y44/PIOB'.
Info: pin 'btn[4]$tr_io' constrained to Bel 'X6/Y50/PIOB'.
Info: pin 'btn[5]$tr_io' constrained to Bel 'X6/Y50/PIOA'.
Info: pin 'btn[6]$tr_io' constrained to Bel 'X72/Y8/PIOD'.
Info: IOLOGIC component sdr.dbi_FF[0] connected to PIO Bel X72/Y11/PIOD
Info: IOLOGIC component sdr.dbi_FF[10] connected to PIO Bel X72/Y14/PIOB
Info: IOLOGIC component sdr.dbi_FF[11] connected to PIO Bel X72/Y14/PIOA
Info: IOLOGIC component sdr.dbi_FF[12] connected to PIO Bel X72/Y5/PIOC
Info: IOLOGIC component sdr.dbi_FF[13] connected to PIO Bel X72/Y5/PIOD
Info: IOLOGIC component sdr.dbi_FF[14] connected to PIO Bel X72/Y20/PIOC
Info: IOLOGIC component sdr.dbi_FF[15] connected to PIO Bel X72/Y11/PIOC
Info: IOLOGIC component sdr.dbi_FF[1] connected to PIO Bel X72/Y29/PIOC
Info: IOLOGIC component sdr.dbi_FF[2] connected to PIO Bel X72/Y29/PIOD
Info: IOLOGIC component sdr.dbi_FF[3] connected to PIO Bel X72/Y32/PIOC
Info: IOLOGIC component sdr.dbi_FF[4] connected to PIO Bel X72/Y38/PIOD
Info: IOLOGIC component sdr.dbi_FF[5] connected to PIO Bel X72/Y44/PIOD
Info: IOLOGIC component sdr.dbi_FF[6] connected to PIO Bel X72/Y47/PIOD
Info: IOLOGIC component sdr.dbi_FF[7] connected to PIO Bel X72/Y41/PIOD
Info: IOLOGIC component sdr.dbi_FF[8] connected to PIO Bel X72/Y14/PIOD
Info: IOLOGIC component sdr.dbi_FF[9] connected to PIO Bel X72/Y14/PIOC
Info: Packing constants..
Info: Packing carries...
Info: Finding LUTFF pairs...
Info: Packing LUT5-7s...
Info: Finding LUT-LUT pairs...
Info: Packing paired LUTs into a SLICE...
Info: Packing unpaired LUTs into a SLICE...
Info: Packing unpaired FFs into a SLICE...
Info: Generating derived timing constraints...
Info:     Input frequency of PLL 'pll.pll_i' is constrained to 25.0 MHz
Info:     Derived frequency constraint of 125.0 MHz for net clk_sdr
Info: Promoting globals...
Info:     promoting clock net clk_25mhz$TRELLIS_IO_IN to global network
Info:     promoting clock net sdram_clk$TRELLIS_IO_OUT to global network
Info:     promoting clock net clk_sdr to global network
Info: Checksum: 0xb6e117a8

Info: Annotating ports with timing budgets for target frequency 12.00 MHz
Info: Checksum: 0xea5b1e4d

Info: Device utilisation:
Info: 	       TRELLIS_SLICE:  2871/12144    23%
Info: 	          TRELLIS_IO:    62/  197    31%
Info: 	                DCCA:     3/   56     5%
Info: 	              DP16KD:     4/   56     7%
Info: 	          MULT18X18D:     0/   28     0%
Info: 	              ALU54B:     0/   14     0%
Info: 	             EHXPLLL:     1/    2    50%
Info: 	             EXTREFB:     0/    1     0%
Info: 	                DCUA:     0/    1     0%
Info: 	           PCSCLKDIV:     0/    2     0%
Info: 	             IOLOGIC:    16/  128    12%
Info: 	            SIOLOGIC:     0/   69     0%
Info: 	                 GSR:     0/    1     0%
Info: 	               JTAGG:     0/    1     0%
Info: 	                OSCG:     0/    1     0%
Info: 	               SEDGA:     0/    1     0%
Info: 	                 DTR:     0/    1     0%
Info: 	             USRMCLK:     0/    1     0%
Info: 	             CLKDIVF:     0/    4     0%
Info: 	           ECLKSYNCB:     0/   10     0%
Info: 	             DLLDELD:     0/    8     0%
Info: 	              DDRDLL:     0/    4     0%
Info: 	             DQSBUFM:     0/    8     0%
Info: 	     TRELLIS_ECLKBUF:     0/    8     0%
Info: 	        ECLKBRIDGECS:     0/    2     0%

Info: Placed 79 cells based on constraints.
Info: Creating initial analytic placement for 1956 cells, random placement wirelen = 161930.
Info:     at initial placer iter 0, wirelen = 3548
Info:     at initial placer iter 1, wirelen = 2817
Info:     at initial placer iter 2, wirelen = 2723
Info:     at initial placer iter 3, wirelen = 2660
Info: Running main analytical placer.
Info:     at iteration #1, type ALL: wirelen solved = 2646, spread = 37840, legal = 38444; time = 0.16s
Info:     at iteration #2, type ALL: wirelen solved = 4489, spread = 27428, legal = 28013; time = 0.23s
Info:     at iteration #3, type ALL: wirelen solved = 5896, spread = 25183, legal = 25840; time = 0.20s
Info:     at iteration #4, type ALL: wirelen solved = 7005, spread = 25152, legal = 25671; time = 0.18s
Info:     at iteration #5, type ALL: wirelen solved = 8374, spread = 23649, legal = 24342; time = 0.19s
Info:     at iteration #6, type ALL: wirelen solved = 9233, spread = 25491, legal = 25914; time = 0.19s
Info:     at iteration #7, type ALL: wirelen solved = 10385, spread = 22874, legal = 23523; time = 0.18s
Info:     at iteration #8, type ALL: wirelen solved = 10675, spread = 22660, legal = 23355; time = 0.18s
Info:     at iteration #9, type ALL: wirelen solved = 10996, spread = 23213, legal = 23757; time = 0.18s
Info:     at iteration #10, type ALL: wirelen solved = 11885, spread = 21682, legal = 22618; time = 0.19s
Info:     at iteration #11, type ALL: wirelen solved = 12153, spread = 21631, legal = 22546; time = 0.18s
Info:     at iteration #12, type ALL: wirelen solved = 12577, spread = 22624, legal = 23375; time = 0.19s
Info:     at iteration #13, type ALL: wirelen solved = 13307, spread = 22451, legal = 23215; time = 0.18s
Info:     at iteration #14, type ALL: wirelen solved = 13806, spread = 22905, legal = 23713; time = 0.19s
Info:     at iteration #15, type ALL: wirelen solved = 14522, spread = 23411, legal = 23891; time = 0.18s
Info:     at iteration #16, type ALL: wirelen solved = 15375, spread = 22434, legal = 23072; time = 0.18s
Info: HeAP Placer Time: 6.35s
Info:   of which solving equations: 2.78s
Info:   of which spreading cells: 0.33s
Info:   of which strict legalisation: 0.14s

Info: Running simulated annealing placer for refinement.
Info:   at iteration #1: temp = 0.000000, timing cost = 3113, wirelen = 22546
Info:   at iteration #5: temp = 0.000000, timing cost = 2626, wirelen = 19982
Info:   at iteration #10: temp = 0.000000, timing cost = 2529, wirelen = 19348
Info:   at iteration #13: temp = 0.000000, timing cost = 2517, wirelen = 19126 
Info: SA placement time 8.46s

Info: Max frequency for clock                          'clkout': 454.34 MHz (PASS at 12.00 MHz)
Info: Max frequency for clock '$glbnet$clk_25mhz$TRELLIS_IO_IN': 20.47 MHz (FAIL at 25.00 MHz)
Info: Max frequency for clock                 '$glbnet$clk_sdr': 153.63 MHz (PASS at 125.00 MHz)
Info: Clock '$glbnet$sdram_clk$TRELLIS_IO_OUT' has no interior paths

Info: Max delay <async>                                  -> <async>                                : 5.27 ns
Info: Max delay <async>                                  -> posedge $glbnet$clk_25mhz$TRELLIS_IO_IN: 20.54 ns
Info: Max delay posedge $glbnet$clk_25mhz$TRELLIS_IO_IN  -> <async>                                : 40.91 ns
Info: Max delay posedge $glbnet$clk_25mhz$TRELLIS_IO_IN  -> posedge $glbnet$clk_sdr                : 30.95 ns
Info: Max delay posedge $glbnet$clk_25mhz$TRELLIS_IO_IN  -> negedge clkout                         : 25.00 ns
Info: Max delay posedge $glbnet$clk_sdr                  -> <async>                                : 9.28 ns
Info: Max delay posedge $glbnet$sdram_clk$TRELLIS_IO_OUT -> posedge $glbnet$clk_25mhz$TRELLIS_IO_IN: 16.56 ns
Info: Max delay negedge clkout                           -> posedge $glbnet$clk_25mhz$TRELLIS_IO_IN: 10.23 ns

Info: Slack histogram:
Info:  legend: * represents 8 endpoint(s)
Info:          + represents [1,8) endpoint(s)
Info: [-22953, -17748) |*+
Info: [-17748, -12543) |+
Info: [-12543,  -7338) |***+
Info: [ -7338,  -2133) |***************+
Info: [ -2133,   3072) |************************************************************ 
Info: [  3072,   8277) |*******************************+
Info: [  8277,  13482) |****************************+
Info: [ 13482,  18687) |*********+
Info: [ 18687,  23892) |**************+
Info: [ 23892,  29097) |*****************+
Info: [ 29097,  34302) |**********+
Info: [ 34302,  39507) |**************+
Info: [ 39507,  44712) |+
Info: [ 44712,  49917) |*+
Info: [ 49917,  55122) |+
Info: [ 55122,  60327) | 
Info: [ 60327,  65532) | 
Info: [ 65532,  70737) | 
Info: [ 70737,  75942) |+
Info: [ 75942,  81147) |****+
Info: Checksum: 0x9abf02b4
Info: Routing globals...
Info:     routing clock net $glbnet$clk_25mhz$TRELLIS_IO_IN using global 0
Info:     routing clock net $glbnet$sdram_clk$TRELLIS_IO_OUT using global 1
Info:     routing clock net $glbnet$clk_sdr using global 2

Info: Routing..
Info: Setting up routing queue.
Info: Routing 17861 arcs.
Info:            |   (re-)routed arcs  |   delta    | remaining|       time spent     |
Info:    IterCnt |  w/ripup   wo/ripup |  w/r  wo/r |      arcs| batch(sec) total(sec)|
Info:       1000 |       17        982 |   17   982 |     16897|       0.52       0.52|
Info:       2000 |       40       1959 |   23   977 |     15985|       0.40       0.92|
Info:       3000 |       63       2936 |   23   977 |     15104|       0.56       1.48|
Info:       4000 |       99       3900 |   36   964 |     14164|       0.66       2.14|
Info:       5000 |      130       4869 |   31   969 |     13271|       0.48       2.61|
Info:       6000 |      135       5864 |    5   995 |     12279|       0.19       2.81|
Info:       7000 |      159       6840 |   24   976 |     11318|       0.48       3.29|
Info:       8000 |      193       7806 |   34   966 |     10405|       0.65       3.94|
Info:       9000 |      218       8781 |   25   975 |      9456|       0.68       4.62|
Info:      10000 |      266       9733 |   48   952 |      8542|       0.75       5.37|
Info:      11000 |      320      10679 |   54   946 |      7642|       0.65       6.02|
Info:      12000 |      396      11603 |   76   924 |      6775|       0.67       6.69|
Info:      13000 |      477      12522 |   81   919 |      5936|       0.82       7.51|
Info:      14000 |      556      13443 |   79   921 |      5038|       0.84       8.35|
Info:      15000 |      617      14382 |   61   939 |      4144|       0.64       8.99|
Info:      16000 |      713      15286 |   96   904 |      3274|       0.90       9.89|
Info:      17000 |      876      16123 |  163   837 |      2552|       1.11      11.00|
Info:      18000 |      991      17008 |  115   885 |      1749|       1.11      12.11|
Info:      19000 |     1141      17858 |  150   850 |      1094|       1.69      13.80|
Info:      20000 |     1184      18815 |   43   957 |       173|       0.35      14.15|
Info:      20172 |     1184      18988 |    0   173 |         0|       0.11      14.27|
Info: Routing complete.
Info: Router1 time 14.27s
Info: Checksum: 0x239f4b6b

Info: Critical path report for clock 'clkout' (negedge -> negedge):
Info: curr total
Info:  0.5  0.5  Source cpu.cru_rdy_LUT4_D_SLICE.Q0
Info:  0.2  0.8    Net cpu.cru_rdy budget 41.285999 ns (35,15) -> (35,15)
Info:                Sink cpu.cru_rdy_LUT4_D_SLICE.D0
Info:  0.2  1.0  Source cpu.cru_rdy_LUT4_D_SLICE.F0
Info:  0.1  1.1    Net cpu.cru_rdy_TRELLIS_FF_Q_DI budget 41.285999 ns (35,15) -> (35,15)
Info:                Sink cpu.cru_rdy_LUT4_D_SLICE.DI0
Info:  0.0  1.1  Setup cpu.cru_rdy_LUT4_D_SLICE.DI0
Info: 0.8 ns logic, 0.4 ns routing

Info: Critical path report for clock '$glbnet$clk_25mhz$TRELLIS_IO_IN' (posedge -> posedge):
Info: curr total
Info:  0.5  0.5  Source cpu.NMI_LUT4_D_SLICE.Q1
Info:  1.5  2.0    Net cpu.nmemen_LUT4_B_Z_LUT4_Z_1_B_LUT4_Z_C_LUT4_Z_A[1] budget 0.000000 ns (36,4) -> (33,2)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.D0
Info:  0.4  2.4  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX0
Info:  0.0  2.4    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D1 budget 0.000000 ns (33,2) -> (33,2)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.FXB
Info:  0.2  2.6  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX1
Info:  0.0  2.6    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1 budget 0.000000 ns (33,2) -> (33,2)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.FXB
Info:  0.2  2.9  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  1.6  4.5    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD[4] budget 0.000000 ns (33,2) -> (37,11)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.M0
Info:  0.3  4.7  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX0
Info:  0.0  4.7    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D1 budget 0.000000 ns (37,11) -> (37,11)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.FXB
Info:  0.2  5.0  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX1
Info:  0.0  5.0    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1 budget 0.000000 ns (37,11) -> (37,11)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.FXB
Info:  0.2  5.2  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  1.2  6.4    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z[5] budget 0.000000 ns (37,11) -> (39,12)
Info:                Sink cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.M0
Info:  0.3  6.7  Source cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX0
Info:  0.0  6.7    Net cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D1 budget 0.000000 ns (39,12) -> (39,12)
Info:                Sink cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.FXB
Info:  0.2  6.9  Source cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX1
Info:  0.0  6.9    Net cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1 budget 0.000000 ns (39,12) -> (39,12)
Info:                Sink cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.FXB
Info:  0.2  7.2  Source cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  1.8  8.9    Net cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z[2] budget 0.000000 ns (39,12) -> (49,9)
Info:                Sink cpu.alu.xa_LUT4_Z_SLICE.D1
Info:  0.2  9.2  Source cpu.alu.xa_LUT4_Z_SLICE.F1
Info:  0.2  9.4    Net cpu.byte_ins_LUT4_D_Z[2] budget 0.000000 ns (49,9) -> (49,9)
Info:                Sink cpu.alu.xa_LUT4_Z_SLICE.D0
Info:  0.2  9.6  Source cpu.alu.xa_LUT4_Z_SLICE.F0
Info:  1.4 11.0    Net cpu.alu.xa[2] budget 0.000000 ns (49,9) -> (49,7)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_3$CCU2_SLICE.A0
Info:  0.4 11.5  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_3$CCU2_SLICE.FCO
Info:  0.0 11.5    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT[4] budget 0.000000 ns (49,7) -> (49,7)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_2$CCU2_SLICE.FCI
Info:  0.1 11.6  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_2$CCU2_SLICE.FCO
Info:  0.0 11.6    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT[6] budget 0.000000 ns (49,7) -> (50,7)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_1$CCU2_SLICE.FCI
Info:  0.1 11.6  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_1$CCU2_SLICE.FCO
Info:  0.0 11.6    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT[8] budget 0.000000 ns (50,7) -> (50,7)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT$CCU2_SLICE.FCI
Info:  0.5 12.1  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT$CCU2_SLICE.F1
Info:  1.0 13.1    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_6_S0[9] budget 0.000000 ns (50,7) -> (50,9)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_S1_LUT4_B_Z_PFUMX_ALUT_SLICE.D1
Info:  0.4 13.5  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_S1_LUT4_B_Z_PFUMX_ALUT_SLICE.OFX0
Info:  0.0 13.5    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_S1_LUT4_B_Z_PFUMX_ALUT_Z budget 0.000000 ns (50,9) -> (50,9)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_S1_LUT4_B_Z_PFUMX_ALUT_SLICE.FXB
Info:  0.2 13.7  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_S1_LUT4_B_Z_PFUMX_ALUT_SLICE.OFX1
Info:  1.0 14.7    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z[6] budget 0.000000 ns (50,9) -> (42,11)
Info:                Sink cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT_CCU2C_COUT_S1_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.M1
Info:  0.3 15.0  Source cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT_CCU2C_COUT_S1_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  0.8 15.8    Net cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT_CCU2C_COUT_S1[4] budget 0.000000 ns (42,11) -> (45,11)
Info:                Sink cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT_CCU2C_COUT_S1_PFUMX_C0_SLICE.M0
Info:  0.3 16.0  Source cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT_CCU2C_COUT_S1_PFUMX_C0_SLICE.OFX0
Info:  0.2 16.2    Net cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT_CCU2C_COUT_S1_PFUMX_C0_Z[2] budget 1.167000 ns (45,11) -> (45,11)
Info:                Sink cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT_CCU2C_COUT_S1_PFUMX_C0_Z_LUT4_B_SLICE.D0
Info:  0.2 16.5  Source cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT_CCU2C_COUT_S1_PFUMX_C0_Z_LUT4_B_SLICE.F0
Info:  1.6 18.0    Net cpu.CLKOUT_LUT4_B_Z_LUT4_Z_D_LUT4_D_Z[0] budget 1.167000 ns (45,11) -> (50,16)
Info:                Sink cpu.bit16_PFUMX_C0_Z_LUT4_Z_3_C_LUT4_D_Z_LUT4_Z_B_LUT4_A_Z_PFUMX_Z_SLICE.D1
Info:  0.4 18.4  Source cpu.bit16_PFUMX_C0_Z_LUT4_Z_3_C_LUT4_D_Z_LUT4_Z_B_LUT4_A_Z_PFUMX_Z_SLICE.OFX0
Info:  1.4 19.8    Net cpu.bit16_LUT4_D_Z[1] budget 1.037000 ns (50,16) -> (53,5)
Info:                Sink cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_C_L6MUX21_Z_D0_PFUMX_Z_SLICE.D0
Info:  0.4 20.2  Source cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_C_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX0
Info:  0.0 20.2    Net cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_C_L6MUX21_Z_D0 budget 0.000000 ns (53,5) -> (53,5)
Info:                Sink cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_C_L6MUX21_Z_D1_PFUMX_Z_SLICE.FXA
Info:  0.2 20.5  Source cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_C_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX1
Info:  2.1 22.6    Net cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_C[1] budget 1.482000 ns (53,5) -> (30,2)
Info:                Sink cpu.ctr_is0_CCU2C_A0_S1_LUT4_B_1_Z_CCU2C_S0_CIN_CCU2C_COUT_2_B0_LUT4_Z_2_SLICE.D0
Info:  0.2 22.8  Source cpu.ctr_is0_CCU2C_A0_S1_LUT4_B_1_Z_CCU2C_S0_CIN_CCU2C_COUT_2_B0_LUT4_Z_2_SLICE.F0
Info:  1.0 23.9    Net cpu.ctr_is0_CCU2C_A0_S1_LUT4_B_1_Z_CCU2C_S0_CIN_CCU2C_COUT_2_B0[1] budget 1.212000 ns (30,2) -> (29,2)
Info:                Sink cpu.ctr_is0_CCU2C_A0_S1_LUT4_B_1_Z_CCU2C_S0_CIN_CCU2C_COUT_2$CCU2_SLICE.B1
Info:  0.4 24.3  Source cpu.ctr_is0_CCU2C_A0_S1_LUT4_B_1_Z_CCU2C_S0_CIN_CCU2C_COUT_2$CCU2_SLICE.FCO
Info:  0.0 24.3    Net cpu.ctr_is0_CCU2C_A0_S1_LUT4_B_1_Z_CCU2C_S0_CIN[2] budget 0.000000 ns (29,2) -> (29,2)
Info:                Sink cpu.ctr_is0_CCU2C_A0_S1_LUT4_B_1_Z_CCU2C_S0_CIN_CCU2C_COUT_1$CCU2_SLICE.FCI
Info:  0.5 24.8  Source cpu.ctr_is0_CCU2C_A0_S1_LUT4_B_1_Z_CCU2C_S0_CIN_CCU2C_COUT_1$CCU2_SLICE.F1
Info:  0.7 25.5    Net cpu.ctr_is0_CCU2C_A0_S1_LUT4_B_1_Z_CCU2C_S0_CIN_CCU2C_COUT_1_S1[2] budget 1.766000 ns (29,2) -> (27,4)
Info:                Sink cpu.ctr_is0_CCU2C_A0_COUT_CCU2C_COUT_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_L6MUX21_Z_D0_L6MUX21_Z_D1_PFUMX_Z_SLICE.D1
Info:  0.4 25.9  Source cpu.ctr_is0_CCU2C_A0_COUT_CCU2C_COUT_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_L6MUX21_Z_D0_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX0
Info:  0.0 25.9    Net cpu.ctr_is0_CCU2C_A0_COUT_CCU2C_COUT_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_L6MUX21_Z_D0_L6MUX21_Z_D1 budget 0.000000 ns (27,4) -> (27,4)
Info:                Sink cpu.ctr_is0_CCU2C_A0_COUT_CCU2C_COUT_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_L6MUX21_Z_D0_L6MUX21_Z_D1_PFUMX_Z_SLICE.FXB
Info:  0.2 26.2  Source cpu.ctr_is0_CCU2C_A0_COUT_CCU2C_COUT_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_L6MUX21_Z_D0_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX1
Info:  0.0 26.2    Net cpu.ctr_is0_CCU2C_A0_COUT_CCU2C_COUT_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_L6MUX21_Z_D0 budget 0.000000 ns (27,4) -> (27,4)
Info:                Sink cpu.ctr_is0_CCU2C_A0_COUT_CCU2C_COUT_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.FXA
Info:  0.2 26.4  Source cpu.ctr_is0_CCU2C_A0_COUT_CCU2C_COUT_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  0.9 27.3    Net cpu.ctr_is0_CCU2C_A0_COUT_CCU2C_COUT_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z[6] budget 1.766000 ns (27,4) -> (26,5)
Info:                Sink cpu.seq_d_LUT4_Z_1_B_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.M1
Info:  0.3 27.5  Source cpu.seq_d_LUT4_Z_1_B_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  1.0 28.5    Net cpu.seq_d_LUT4_Z_1_B[4] budget 1.766000 ns (26,5) -> (30,5)
Info:                Sink cpu.seq_d_LUT4_Z_3_A_PFUMX_Z_SLICE.M0
Info:  0.3 28.7  Source cpu.seq_d_LUT4_Z_3_A_PFUMX_Z_SLICE.OFX0
Info:  1.3 30.0    Net cpu.seq_d_LUT4_Z_3_A[0] budget 1.766000 ns (30,5) -> (36,4)
Info:                Sink cpu.NMI_LUT4_D_SLICE.D1
Info:  0.2 30.2  Source cpu.NMI_LUT4_D_SLICE.F1
Info:  0.0 30.3    Net cpu.seq_d[3] budget 1.766000 ns (36,4) -> (36,4)
Info:                Sink cpu.NMI_LUT4_D_SLICE.DI1
Info:  0.0 30.3  Setup cpu.NMI_LUT4_D_SLICE.DI1
Info: 9.6 ns logic, 20.6 ns routing

Info: Critical path report for clock '$glbnet$clk_sdr' (posedge -> posedge):
Info: curr total
Info:  0.5  0.5  Source cpu.rdy_LUT4_B_SLICE.Q1
Info:  0.8  1.4    Net sdr.sd_addr_TRELLIS_FF_Q_8_DI_PFUMX_Z_C0_LUT4_D_Z[0] budget 1.050000 ns (54,17) -> (54,17)
Info:                Sink sdr.sd_addr_TRELLIS_FF_Q_8_DI_PFUMX_Z_C0_LUT4_Z_SLICE.B0
Info:  0.2  1.6  Source sdr.sd_addr_TRELLIS_FF_Q_8_DI_PFUMX_Z_C0_LUT4_Z_SLICE.F0
Info:  0.5  2.1    Net sdr.sd_addr_TRELLIS_FF_Q_8_DI_PFUMX_Z_C0[0] budget 1.049000 ns (54,17) -> (54,18)
Info:                Sink sdr.sd_addr_TRELLIS_FF_Q_3_DI_LUT4_Z_SLICE.D1
Info:  0.2  2.3  Source sdr.sd_addr_TRELLIS_FF_Q_3_DI_LUT4_Z_SLICE.F1
Info:  0.5  2.8    Net sdram_casn_TRELLIS_FF_Q_DI_LUT4_Z_D_LUT4_D_Z_LUT4_Z_D[2] budget 1.049000 ns (54,18) -> (54,18)
Info:                Sink sdram_casn_TRELLIS_FF_Q_DI_LUT4_Z_D_LUT4_D_Z_LUT4_Z_SLICE.D0
Info:  0.2  3.1  Source sdram_casn_TRELLIS_FF_Q_DI_LUT4_Z_D_LUT4_D_Z_LUT4_Z_SLICE.F0
Info:  1.1  4.1    Net sdram_casn_TRELLIS_FF_Q_DI_LUT4_Z_D_LUT4_D_Z[0] budget 1.049000 ns (54,18) -> (55,20)
Info:                Sink sdram_casn_TRELLIS_FF_Q_DI_LUT4_Z_D_LUT4_D_Z_LUT4_B_SLICE.B0
Info:  0.2  4.3  Source sdram_casn_TRELLIS_FF_Q_DI_LUT4_Z_D_LUT4_D_Z_LUT4_B_SLICE.F0
Info:  0.2  4.6    Net sdram_csn_TRELLIS_FF_Q_DI[2] budget 1.049000 ns (55,20) -> (55,20)
Info:                Sink sdram_casn_TRELLIS_FF_Q_DI_LUT4_Z_D_LUT4_D_Z_LUT4_B_SLICE.D1
Info:  0.2  4.8  Source sdram_casn_TRELLIS_FF_Q_DI_LUT4_Z_D_LUT4_D_Z_LUT4_B_SLICE.F1
Info:  0.1  4.9    Net sdram_rasn_TRELLIS_FF_Q_DI budget 1.049000 ns (55,20) -> (55,20)
Info:                Sink sdram_casn_TRELLIS_FF_Q_DI_LUT4_Z_D_LUT4_D_Z_LUT4_B_SLICE.DI1
Info:  0.0  4.9  Setup sdram_casn_TRELLIS_FF_Q_DI_LUT4_Z_D_LUT4_D_Z_LUT4_B_SLICE.DI1
Info: 1.7 ns logic, 3.2 ns routing

Info: Critical path report for cross-domain path '<async>' -> '<async>':
Info: curr total
Info:  0.0  0.0  Source wifi_gpio17$tr_io.O
Info:  1.1  1.1    Net wifi_gpio17$TRELLIS_IO_IN budget 27.621000 ns (0,41) -> (2,32)
Info:                Sink sd_d_$_TBUF__Y_E_LUT4_Z_SLICE.D0
Info:  0.2  1.3  Source sd_d_$_TBUF__Y_E_LUT4_Z_SLICE.F0
Info:  0.8  2.1    Net sd_d_$_TBUF__Y_E budget 27.620001 ns (2,32) -> (2,32)
Info:                Sink sd_d_$_TBUF__Y_E_LUT4_Z_SLICE.A1
Info:  0.2  2.4  Source sd_d_$_TBUF__Y_E_LUT4_Z_SLICE.F1
Info:  0.9  3.3    Net sd_d[2]$tr_io$invert_T$conn$Z budget 27.620001 ns (2,32) -> (0,32)
Info:                Sink sd_d[2]$tr_io.T
Info: 0.5 ns logic, 2.8 ns routing

Info: Critical path report for cross-domain path '<async>' -> 'posedge $glbnet$clk_25mhz$TRELLIS_IO_IN':
Info: curr total
Info:  0.0  0.0  Source ftdi_txd$tr_io.O
Info:  3.8  3.8    Net ftdi_txd$TRELLIS_IO_IN budget 0.000000 ns (0,44) -> (16,11)
Info:                Sink ftdi_txd_LUT4_B_Z_PFUMX_ALUT_SLICE.B1
Info:  0.4  4.2  Source ftdi_txd_LUT4_B_Z_PFUMX_ALUT_SLICE.OFX0
Info:  0.0  4.2    Net ftdi_txd_LUT4_B_Z_PFUMX_ALUT_Z budget 0.000000 ns (16,11) -> (16,11)
Info:                Sink ftdi_txd_LUT4_B_Z_PFUMX_ALUT_SLICE.FXB
Info:  0.2  4.4  Source ftdi_txd_LUT4_B_Z_PFUMX_ALUT_SLICE.OFX1
Info:  0.0  4.4    Net ftdi_txd_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z budget 0.000000 ns (16,11) -> (16,11)
Info:                Sink ftdi_txd_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_D0_PFUMX_Z_SLICE.FXB
Info:  0.2  4.7  Source ftdi_txd_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_D0_PFUMX_Z_SLICE.OFX1
Info:  1.0  5.6    Net ftdi_txd_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_L6MUX21_D1_Z[3] budget 0.000000 ns (16,11) -> (20,12)
Info:                Sink ftdi_txd_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_PFUMX_C0_1_SLICE.D1
Info:  0.4  6.1  Source ftdi_txd_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_PFUMX_C0_1_SLICE.OFX0
Info:  0.0  6.1    Net ftdi_txd_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_PFUMX_C0_1_Z budget 0.000000 ns (20,12) -> (20,12)
Info:                Sink ftdi_txd_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_PFUMX_C0_SLICE.FXA
Info:  0.2  6.3  Source ftdi_txd_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_PFUMX_C0_SLICE.OFX1
Info:  1.5  7.8    Net cpu.t1_d_L6MUX21_Z_D0_L6MUX21_Z_D0_PFUMX_Z_BLUT_LUT4_Z_D_L6MUX21_Z_SD[0] budget 0.000000 ns (20,12) -> (25,9)
Info:                Sink cpu.st_ovf_PFUMX_C0_Z_LUT4_Z_C_LUT4_D_Z_PFUMX_Z_1_SLICE.D1
Info:  0.4  8.2  Source cpu.st_ovf_PFUMX_C0_Z_LUT4_Z_C_LUT4_D_Z_PFUMX_Z_1_SLICE.OFX0
Info:  1.8 10.0    Net cpu.st_ovf_PFUMX_C0_Z_LUT4_Z_C_LUT4_D_Z[4] budget 0.000000 ns (25,9) -> (45,3)
Info:                Sink cpu.st_d_L6MUX21_Z_1_D1_PFUMX_Z_SLICE.M0
Info:  0.3 10.3  Source cpu.st_d_L6MUX21_Z_1_D1_PFUMX_Z_SLICE.OFX0
Info:  0.0 10.3    Net cpu.st_d_L6MUX21_Z_1_D1 budget 0.000000 ns (45,3) -> (45,3)
Info:                Sink cpu.st_d_L6MUX21_Z_1_D1_PFUMX_Z_SLICE.FXB
Info:  0.2 10.5  Source cpu.st_d_L6MUX21_Z_1_D1_PFUMX_Z_SLICE.OFX1
Info:  0.1 10.6    Net cpu.st_d[13] budget 2.353000 ns (45,3) -> (45,3)
Info:                Sink cpu.st_d_L6MUX21_Z_1_D1_PFUMX_Z_SLICE.DI1
Info:  0.0 10.6  Setup cpu.st_d_L6MUX21_Z_1_D1_PFUMX_Z_SLICE.DI1
Info: 2.4 ns logic, 8.2 ns routing

Info: Critical path report for cross-domain path 'posedge $glbnet$clk_25mhz$TRELLIS_IO_IN' -> '<async>':
Info: curr total
Info:  0.5  0.5  Source cpu.NMI_LUT4_D_SLICE.Q1
Info:  1.5  2.0    Net cpu.nmemen_LUT4_B_Z_LUT4_Z_1_B_LUT4_Z_C_LUT4_Z_A[1] budget 0.000000 ns (36,4) -> (33,2)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.D0
Info:  0.4  2.4  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX0
Info:  0.0  2.4    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D1 budget 0.000000 ns (33,2) -> (33,2)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.FXB
Info:  0.2  2.6  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX1
Info:  0.0  2.6    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1 budget 0.000000 ns (33,2) -> (33,2)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.FXB
Info:  0.2  2.9  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  1.6  4.5    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD[4] budget 0.000000 ns (33,2) -> (37,11)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.M0
Info:  0.3  4.7  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX0
Info:  0.0  4.7    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D1 budget 0.000000 ns (37,11) -> (37,11)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.FXB
Info:  0.2  5.0  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX1
Info:  0.0  5.0    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1 budget 0.000000 ns (37,11) -> (37,11)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.FXB
Info:  0.2  5.2  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  1.2  6.4    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z[5] budget 0.000000 ns (37,11) -> (39,12)
Info:                Sink cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.M0
Info:  0.3  6.7  Source cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX0
Info:  0.0  6.7    Net cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D1 budget 0.000000 ns (39,12) -> (39,12)
Info:                Sink cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.FXB
Info:  0.2  6.9  Source cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX1
Info:  0.0  6.9    Net cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1 budget 0.000000 ns (39,12) -> (39,12)
Info:                Sink cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.FXB
Info:  0.2  7.2  Source cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  1.8  8.9    Net cpu.st_lgt_LUT4_C_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z[2] budget 0.000000 ns (39,12) -> (49,9)
Info:                Sink cpu.alu.xa_LUT4_Z_SLICE.D1
Info:  0.2  9.2  Source cpu.alu.xa_LUT4_Z_SLICE.F1
Info:  0.2  9.4    Net cpu.byte_ins_LUT4_D_Z[2] budget 0.000000 ns (49,9) -> (49,9)
Info:                Sink cpu.alu.xa_LUT4_Z_SLICE.D0
Info:  0.2  9.6  Source cpu.alu.xa_LUT4_Z_SLICE.F0
Info:  1.4 11.0    Net cpu.alu.xa[2] budget 0.000000 ns (49,9) -> (49,7)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_3$CCU2_SLICE.A0
Info:  0.4 11.5  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_3$CCU2_SLICE.FCO
Info:  0.0 11.5    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT[4] budget 0.000000 ns (49,7) -> (49,7)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_2$CCU2_SLICE.FCI
Info:  0.1 11.6  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_2$CCU2_SLICE.FCO
Info:  0.0 11.6    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT[6] budget 0.000000 ns (49,7) -> (50,7)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_1$CCU2_SLICE.FCI
Info:  0.1 11.6  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_1$CCU2_SLICE.FCO
Info:  0.0 11.6    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT[8] budget 0.000000 ns (50,7) -> (50,7)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT$CCU2_SLICE.FCI
Info:  0.1 11.7  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT$CCU2_SLICE.FCO
Info:  0.0 11.7    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT[10] budget 0.000000 ns (50,7) -> (50,7)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_5$CCU2_SLICE.FCI
Info:  0.5 12.2  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_5$CCU2_SLICE.F1
Info:  0.5 12.6    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_1_COUT_CCU2C_COUT_6_S0[11] budget 0.000000 ns (50,7) -> (50,5)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_5_S1_LUT4_B_Z_PFUMX_ALUT_SLICE.D1
Info:  0.4 13.0  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_5_S1_LUT4_B_Z_PFUMX_ALUT_SLICE.OFX0
Info:  0.0 13.0    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_5_S1_LUT4_B_Z_PFUMX_ALUT_Z budget 0.000000 ns (50,5) -> (50,5)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_5_S1_LUT4_B_Z_PFUMX_ALUT_SLICE.FXB
Info:  0.2 13.3  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_5_S1_LUT4_B_Z_PFUMX_ALUT_SLICE.OFX1
Info:  1.0 14.2    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_5_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z[2] budget 0.000000 ns (50,5) -> (51,5)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_5_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_LUT4_C_SLICE.D0
Info:  0.2 14.5  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_5_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_LUT4_C_SLICE.F0
Info:  0.7 15.2    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_5_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_LUT4_C_Z[6] budget 0.000000 ns (51,5) -> (51,4)
Info:                Sink cpu.step_PFUMX_Z_C0_LUT4_Z_2_C_LUT4_C_B_LUT4_B_2_Z_L6MUX21_SD_Z_LUT4_D_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.M1
Info:  0.3 15.4  Source cpu.step_PFUMX_Z_C0_LUT4_Z_2_C_LUT4_C_B_LUT4_B_2_Z_L6MUX21_SD_Z_LUT4_D_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  2.0 17.4    Net cpu.CLKOUT_LUT4_B_Z_LUT4_Z_D_LUT4_D_2_Z[3] budget 0.000000 ns (51,4) -> (44,19)
Info:                Sink utils.int3i_TRELLIS_FF_Q_LSR_PFUMX_Z_BLUT_LUT4_Z_C_LUT4_D_Z_LUT4_Z_D_L6MUX21_SD_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.C1
Info:  0.4 17.8  Source utils.int3i_TRELLIS_FF_Q_LSR_PFUMX_Z_BLUT_LUT4_Z_C_LUT4_D_Z_LUT4_Z_D_L6MUX21_SD_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX0
Info:  0.0 17.8    Net utils.int3i_TRELLIS_FF_Q_LSR_PFUMX_Z_BLUT_LUT4_Z_C_LUT4_D_Z_LUT4_Z_D_L6MUX21_SD_Z_L6MUX21_Z_D1_L6MUX21_Z_D1 budget 0.000000 ns (44,19) -> (44,19)
Info:                Sink utils.int3i_TRELLIS_FF_Q_LSR_PFUMX_Z_BLUT_LUT4_Z_C_LUT4_D_Z_LUT4_Z_D_L6MUX21_SD_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.FXB
Info:  0.2 18.0  Source utils.int3i_TRELLIS_FF_Q_LSR_PFUMX_Z_BLUT_LUT4_Z_C_LUT4_D_Z_LUT4_Z_D_L6MUX21_SD_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX1
Info:  0.0 18.0    Net utils.int3i_TRELLIS_FF_Q_LSR_PFUMX_Z_BLUT_LUT4_Z_C_LUT4_D_Z_LUT4_Z_D_L6MUX21_SD_Z_L6MUX21_Z_D1 budget 0.000000 ns (44,19) -> (44,19)
Info:                Sink utils.int3i_TRELLIS_FF_Q_LSR_PFUMX_Z_BLUT_LUT4_Z_C_LUT4_D_Z_LUT4_Z_D_L6MUX21_SD_Z_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.FXB
Info:  0.2 18.3  Source utils.int3i_TRELLIS_FF_Q_LSR_PFUMX_Z_BLUT_LUT4_Z_C_LUT4_D_Z_LUT4_Z_D_L6MUX21_SD_Z_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  1.9 20.2    Net sdr.csn_LUT4_B_Z[1] budget 4.282000 ns (44,19) -> (25,11)
Info:                Sink aca.cruFLG_d_PFUMX_Z_C0_LUT4_Z_C_LUT4_Z_SLICE.D1
Info:  0.2 20.5  Source aca.cruFLG_d_PFUMX_Z_C0_LUT4_Z_C_LUT4_Z_SLICE.F1
Info:  1.3 21.8    Net sdr.csn_LUT4_B_Z_LUT4_D_Z[1] budget 7.561000 ns (25,11) -> (24,12)
Info:                Sink idle_LUT4_Z_SLICE.B0
Info:  0.2 22.0  Source idle_LUT4_Z_SLICE.F0
Info:  2.9 24.9    Net idle budget 7.561000 ns (24,12) -> (0,20)
Info:                Sink led[7]$tr_io.I
Info: 7.0 ns logic, 17.9 ns routing

Info: Critical path report for cross-domain path 'posedge $glbnet$clk_25mhz$TRELLIS_IO_IN' -> 'posedge $glbnet$clk_sdr':
Info: curr total
Info:  0.5  0.5  Source cpu.NMI_LUT4_D_SLICE.Q1
Info:  1.5  2.0    Net cpu.nmemen_LUT4_B_Z_LUT4_Z_1_B_LUT4_Z_C_LUT4_Z_A[1] budget 0.000000 ns (36,4) -> (33,2)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.D0
Info:  0.4  2.4  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX0
Info:  0.0  2.4    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D1 budget 0.000000 ns (33,2) -> (33,2)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.FXB
Info:  0.2  2.6  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX1
Info:  0.0  2.6    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1 budget 0.000000 ns (33,2) -> (33,2)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.FXB
Info:  0.2  2.9  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD_L6MUX21_Z_3_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  1.6  4.5    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_SD[4] budget 0.000000 ns (33,2) -> (37,11)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.M0
Info:  0.3  4.7  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX0
Info:  0.0  4.7    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D1 budget 0.000000 ns (37,11) -> (37,11)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.FXB
Info:  0.2  5.0  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX1
Info:  0.0  5.0    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1 budget 0.000000 ns (37,11) -> (37,11)
Info:                Sink cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.FXB
Info:  0.2  5.2  Source cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  1.2  6.4    Net cpu.nmemen_LUT4_Z_A_LUT4_Z_1_C_LUT4_Z_D_PFUMX_C0_Z_L6MUX21_D1_Z_L6MUX21_D1_Z[5] budget 0.000000 ns (37,11) -> (39,15)
Info:                Sink cpu.st_op_LUT4_C_1_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.M0
Info:  0.3  6.7  Source cpu.st_op_LUT4_C_1_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX0
Info:  0.0  6.7    Net cpu.st_op_LUT4_C_1_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D1 budget 0.000000 ns (39,15) -> (39,15)
Info:                Sink cpu.st_op_LUT4_C_1_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.FXB
Info:  0.2  6.9  Source cpu.st_op_LUT4_C_1_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX1
Info:  0.0  6.9    Net cpu.st_op_LUT4_C_1_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1 budget 0.000000 ns (39,15) -> (39,15)
Info:                Sink cpu.st_op_LUT4_C_1_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.FXB
Info:  0.2  7.2  Source cpu.st_op_LUT4_C_1_Z_PFUMX_BLUT_Z_L6MUX21_D1_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  2.6  9.8    Net cpu.byte_ins_LUT4_D_Z_PFUMX_Z_1_C0_LUT4_Z_B[1] budget 0.000000 ns (39,15) -> (50,6)
Info:                Sink cpu.a_bus_LUT4_Z_2_SLICE.D0
Info:  0.2 10.0  Source cpu.a_bus_LUT4_Z_2_SLICE.F0
Info:  1.5 11.5    Net cpu.a_bus[10] budget 0.000000 ns (50,6) -> (52,9)
Info:                Sink cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT_CCU2C_COUT_5$CCU2_SLICE.B0
Info:  0.4 11.9  Source cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT_CCU2C_COUT_5$CCU2_SLICE.FCO
Info:  0.0 11.9    Net cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT[12] budget 0.000000 ns (52,9) -> (52,9)
Info:                Sink cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT_CCU2C_COUT_4$CCU2_SLICE.FCI
Info:  0.1 12.0  Source cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT_CCU2C_COUT_4$CCU2_SLICE.FCO
Info:  0.0 12.0    Net cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT[14] budget 0.000000 ns (52,9) -> (53,9)
Info:                Sink cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT_CCU2C_COUT_3$CCU2_SLICE.FCI
Info:  0.5 12.5  Source cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT_CCU2C_COUT_3$CCU2_SLICE.F1
Info:  1.3 13.8    Net cpu.alu.xa_LUT4_Z_1_B_LUT4_C_Z_PFUMX_Z_2_C0_CCU2C_S1_COUT_CCU2C_COUT_S0[15] budget 0.000000 ns (53,9) -> (48,6)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_1_B_LUT4_Z_SLICE.D1
Info:  0.2 14.0  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_1_B_LUT4_Z_SLICE.F1
Info:  0.4 14.5    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_4_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_LUT4_B_Z[2] budget 0.000000 ns (48,6) -> (49,6)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_4_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_LUT4_B_Z_LUT4_C_Z_PFUMX_ALUT_SLICE.D1
Info:  0.4 14.9  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_4_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_LUT4_B_Z_LUT4_C_Z_PFUMX_ALUT_SLICE.OFX0
Info:  0.0 14.9    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_4_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_LUT4_B_Z_LUT4_C_Z_PFUMX_ALUT_Z budget 0.000000 ns (49,6) -> (49,6)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_4_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_LUT4_B_Z_LUT4_C_Z_PFUMX_ALUT_SLICE.FXB
Info:  0.2 15.1  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_4_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_LUT4_B_Z_LUT4_C_Z_PFUMX_ALUT_SLICE.OFX1
Info:  0.0 15.1    Net cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_4_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_LUT4_B_Z_L6MUX21_SD_D1 budget 0.000000 ns (49,6) -> (49,6)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_4_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_LUT4_B_Z_LUT4_D_1_Z_PFUMX_ALUT_SLICE.FXB
Info:  0.2 15.3  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_4_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_LUT4_B_Z_LUT4_D_1_Z_PFUMX_ALUT_SLICE.OFX1
Info:  1.7 17.0    Net bob_495.ide_i_LUT4_Z_B_LUT4_Z_C_PFUMX_Z_C0[0] budget 0.000000 ns (49,6) -> (40,17)
Info:                Sink cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_4_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_LUT4_B_Z_L6MUX21_SD_Z_LUT4_Z_SLICE.D1
Info:  0.2 17.3  Source cpu.alu.xa_LUT4_Z_2_C_LUT4_C_Z_LUT4_Z_D_L6MUX21_Z_D1_PFUMX_Z_BLUT_LUT4_Z_B_CCU2C_S0_COUT_CCU2C_COUT_4_S1_LUT4_B_Z_PFUMX_ALUT_Z_L6MUX21_D1_Z_LUT4_B_Z_L6MUX21_SD_Z_LUT4_Z_SLICE.F1
Info:  1.5 18.8    Net ab[15] budget 0.177000 ns (40,17) -> (52,17)
Info:                Sink mmu.mo_PFUMX_Z_SLICE.D0
Info:  0.4 19.2  Source mmu.mo_PFUMX_Z_SLICE.OFX0
Info:  0.1 19.2    Net mab[3] budget 0.137000 ns (52,17) -> (52,17)
Info:                Sink mmu.mo_PFUMX_Z_SLICE.DI0
Info:  0.0 19.2  Setup mmu.mo_PFUMX_Z_SLICE.DI0
Info: 5.9 ns logic, 13.4 ns routing

Info: Critical path report for cross-domain path 'posedge $glbnet$clk_25mhz$TRELLIS_IO_IN' -> 'negedge clkout':
Info: curr total
Info:  0.5  0.5  Source cpu.seq_d_PFUMX_Z_1_SLICE.Q0
Info:  2.5  3.0    Net cpu.seq[2] budget 2.732000 ns (35,4) -> (29,10)
Info:                Sink cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_3_A_LUT4_Z_D_LUT4_D_Z_LUT4_Z_SLICE.B1
Info:  0.2  3.3  Source cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_3_A_LUT4_Z_D_LUT4_D_Z_LUT4_Z_SLICE.F1
Info:  0.7  4.0    Net cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_3_A_LUT4_Z_D_LUT4_D_Z[0] budget 2.732000 ns (29,10) -> (27,9)
Info:                Sink cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_3_A_LUT4_Z_D_LUT4_D_Z_LUT4_C_1_SLICE.D0
Info:  0.2  4.2  Source cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_3_A_LUT4_Z_D_LUT4_D_Z_LUT4_C_1_SLICE.F0
Info:  0.6  4.9    Net cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_3_A_LUT4_Z_D_LUT4_D_Z_LUT4_C_1_Z[3] budget 2.732000 ns (27,9) -> (27,9)
Info:                Sink cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_3_A_LUT4_Z_D_LUT4_D_Z_LUT4_C_1_SLICE.C1
Info:  0.2  5.1  Source cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_3_A_LUT4_Z_D_LUT4_D_Z_LUT4_C_1_SLICE.F1
Info:  0.6  5.7    Net cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_3_A_LUT4_Z_D_LUT4_D_Z_LUT4_C_1_Z_LUT4_C_Z[0] budget 2.731000 ns (27,9) -> (27,9)
Info:                Sink cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_3_A_LUT4_Z_D_LUT4_D_Z_LUT4_C_1_Z_LUT4_C_Z_LUT4_B_SLICE.C0
Info:  0.2  6.0  Source cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_3_A_LUT4_Z_D_LUT4_D_Z_LUT4_C_1_Z_LUT4_C_Z_LUT4_B_SLICE.F0
Info:  1.0  7.0    Net cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_3_A_LUT4_Z_D_LUT4_D_Z_LUT4_C_1_Z_LUT4_C_Z_LUT4_B_Z[4] budget 2.731000 ns (27,9) -> (30,7)
Info:                Sink cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_3_A_LUT4_Z_D_LUT4_D_Z_LUT4_C_1_Z_LUT4_C_Z_LUT4_B_Z_PFUMX_C0_SLICE.M0
Info:  0.3  7.2  Source cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_3_A_LUT4_Z_D_LUT4_D_Z_LUT4_C_1_Z_LUT4_C_Z_LUT4_B_Z_PFUMX_C0_SLICE.OFX0
Info:  2.2  9.4    Net cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_3_A_LUT4_Z_D_LUT4_D_Z_LUT4_C_1_Z_LUT4_C_Z_LUT4_B_Z_PFUMX_C0_Z[1] budget 2.855000 ns (30,7) -> (52,2)
Info:                Sink cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_1_SLICE.D1
Info:  0.2  9.6  Source cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_B_LUT4_D_Z_LUT4_Z_1_SLICE.F1
Info:  1.9 11.6    Net cpu.st_d_PFUMX_Z_1_BLUT_LUT4_Z_D_LUT4_Z_D_LUT4_Z_D_LUT4_Z_C[0] budget 3.176000 ns (52,2) -> (36,9)
Info:                Sink cpu.cru_rdy_TRELLIS_FF_Q_LSR_LUT4_Z_SLICE.D1
Info:  0.2 11.8  Source cpu.cru_rdy_TRELLIS_FF_Q_LSR_LUT4_Z_SLICE.F1
Info:  0.2 12.0    Net sdr.csn_L6MUX21_SD_Z[4] budget 4.276000 ns (36,9) -> (36,9)
Info:                Sink cpu.cru_rdy_TRELLIS_FF_Q_LSR_LUT4_Z_SLICE.D0
Info:  0.2 12.3  Source cpu.cru_rdy_TRELLIS_FF_Q_LSR_LUT4_Z_SLICE.F0
Info:  1.1 13.3    Net cpu.cru_rdy_TRELLIS_FF_Q_LSR budget 4.276000 ns (36,9) -> (35,15)
Info:                Sink cpu.cru_rdy_LUT4_D_SLICE.LSR
Info:  0.4 13.8  Setup cpu.cru_rdy_LUT4_D_SLICE.LSR
Info: 2.9 ns logic, 10.9 ns routing

Info: Critical path report for cross-domain path 'posedge $glbnet$clk_sdr' -> '<async>':
Info: curr total
Info:  0.5  0.5  Source sdr.sd_data_wr_TRELLIS_FF_Q_DI_LUT4_Z_SLICE.Q0
Info:  3.4  3.9    Net sdr.sd_data_wr budget 41.285999 ns (56,17) -> (70,46)
Info:                Sink sdram_d[6]$tr_io$invert_T_SLICE.A1
Info:  0.2  4.1  Source sdram_d[6]$tr_io$invert_T_SLICE.F1
Info:  0.9  5.0    Net sdram_d[6]$tr_io$invert_T$conn$Z budget 41.285999 ns (70,46) -> (72,47)
Info:                Sink sdram_d[6]$tr_io.T
Info: 0.8 ns logic, 4.3 ns routing

Info: Critical path report for cross-domain path 'posedge $glbnet$sdram_clk$TRELLIS_IO_OUT' -> 'posedge $glbnet$clk_25mhz$TRELLIS_IO_IN':
Info: curr total
Info:  0.0  0.0  Source sdram_d[7]$tr_io$IOL.INFF
Info:  3.2  3.2    Net sdr_o[7] budget 0.000000 ns (72,41) -> (50,20)
Info:                Sink cpu.t3_d_L6MUX21_Z_4_SD_LUT4_Z_B_LUT4_C_Z_L6MUX21_Z_1_D0_L6MUX21_Z_D0_PFUMX_Z_BLUT_LUT4_Z_D_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.M1
Info:  0.3  3.4  Source cpu.t3_d_L6MUX21_Z_4_SD_LUT4_Z_B_LUT4_C_Z_L6MUX21_Z_1_D0_L6MUX21_Z_D0_PFUMX_Z_BLUT_LUT4_Z_D_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  0.9  4.3    Net cpu.t3_d_L6MUX21_Z_4_SD_LUT4_Z_B_LUT4_C_Z_L6MUX21_Z_1_D0_L6MUX21_Z_D0_PFUMX_Z_BLUT_LUT4_Z_D[1] budget 0.000000 ns (50,20) -> (47,21)
Info:                Sink cpu.t3_d_L6MUX21_Z_4_SD_LUT4_Z_B_LUT4_C_Z_L6MUX21_Z_1_D0_L6MUX21_Z_D0_PFUMX_Z_SLICE.D0
Info:  0.4  4.7  Source cpu.t3_d_L6MUX21_Z_4_SD_LUT4_Z_B_LUT4_C_Z_L6MUX21_Z_1_D0_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX0
Info:  0.0  4.7    Net cpu.t3_d_L6MUX21_Z_4_SD_LUT4_Z_B_LUT4_C_Z_L6MUX21_Z_1_D0_L6MUX21_Z_D0 budget 0.000000 ns (47,21) -> (47,21)
Info:                Sink cpu.t3_d_L6MUX21_Z_4_SD_LUT4_Z_B_LUT4_C_Z_L6MUX21_Z_1_D0_L6MUX21_Z_D1_PFUMX_Z_SLICE.FXA
Info:  0.2  5.0  Source cpu.t3_d_L6MUX21_Z_4_SD_LUT4_Z_B_LUT4_C_Z_L6MUX21_Z_1_D0_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX1
Info:  0.0  5.0    Net cpu.t3_d_L6MUX21_Z_4_SD_LUT4_Z_B_LUT4_C_Z_L6MUX21_Z_1_D0 budget 0.000000 ns (47,21) -> (47,21)
Info:                Sink cpu.t3_d_L6MUX21_Z_4_SD_LUT4_Z_B_LUT4_C_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.FXA
Info:  0.2  5.2  Source cpu.t3_d_L6MUX21_Z_4_SD_LUT4_Z_B_LUT4_C_Z_L6MUX21_Z_1_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  1.9  7.1    Net cpu.bit16_d_PFUMX_Z_C0[0] budget 0.000000 ns (47,21) -> (36,10)
Info:                Sink cpu.t1_d_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.D1
Info:  0.4  7.5  Source cpu.t1_d_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX0
Info:  0.0  7.5    Net cpu.t1_d_L6MUX21_Z_D1_L6MUX21_Z_D1 budget 0.000000 ns (36,10) -> (36,10)
Info:                Sink cpu.t1_d_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.FXB
Info:  0.2  7.8  Source cpu.t1_d_L6MUX21_Z_D1_L6MUX21_Z_D1_PFUMX_Z_SLICE.OFX1
Info:  0.0  7.8    Net cpu.t1_d_L6MUX21_Z_D1 budget 0.000000 ns (36,10) -> (36,10)
Info:                Sink cpu.t1_d_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.FXB
Info:  0.2  8.0  Source cpu.t1_d_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.OFX1
Info:  0.1  8.1    Net cpu.t1_d[15] budget 3.034000 ns (36,10) -> (36,10)
Info:                Sink cpu.t1_d_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.DI1
Info:  0.0  8.1  Setup cpu.t1_d_L6MUX21_Z_D1_L6MUX21_Z_D0_PFUMX_Z_SLICE.DI1
Info: 2.0 ns logic, 6.1 ns routing

Info: Critical path report for cross-domain path 'negedge clkout' -> 'posedge $glbnet$clk_25mhz$TRELLIS_IO_IN':
Info: curr total
Info:  0.5  0.5  Source cpu.cru_rdy_LUT4_D_SLICE.Q0
Info:  0.5  1.0    Net cpu.cru_rdy budget 4.692000 ns (35,15) -> (35,15)
Info:                Sink cpu.cru_rdy_LUT4_D_SLICE.D1
Info:  0.2  1.3  Source cpu.cru_rdy_LUT4_D_SLICE.F1
Info:  1.8  3.0    Net cpu.nmemen_LUT4_B_Z[4] budget 4.692000 ns (35,15) -> (36,8)
Info:                Sink cpu.st_c_LUT4_B_Z_PFUMX_ALUT_Z_LUT4_A_SLICE.B1
Info:  0.2  3.3  Source cpu.st_c_LUT4_B_Z_PFUMX_ALUT_Z_LUT4_A_SLICE.F1
Info:  1.0  4.3    Net cpu.st_c_LUT4_B_Z_PFUMX_ALUT_Z_LUT4_A_Z_LUT4_A_Z[3] budget 4.183000 ns (36,8) -> (34,7)
Info:                Sink cpu.st_c_LUT4_B_Z_PFUMX_ALUT_Z_LUT4_A_Z_LUT4_A_Z_LUT4_D_SLICE.D0
Info:  0.2  4.5  Source cpu.st_c_LUT4_B_Z_PFUMX_ALUT_Z_LUT4_A_Z_LUT4_A_Z_LUT4_D_SLICE.F0
Info:  1.9  6.4    Net cpu.st_c_LUT4_B_Z_PFUMX_ALUT_Z_LUT4_A_Z_LUT4_A_Z_LUT4_D_Z budget 3.718000 ns (34,7) -> (38,15)
Info:                Sink cpu.pc_d_PFUMX_Z_12_SLICE.CE
Info:  0.0  6.4  Setup cpu.pc_d_PFUMX_Z_12_SLICE.CE
Info: 1.2 ns logic, 5.2 ns routing

Info: Max frequency for clock                          'clkout': 894.45 MHz (PASS at 12.00 MHz)
Info: Max frequency for clock '$glbnet$clk_25mhz$TRELLIS_IO_IN': 33.03 MHz (PASS at 25.00 MHz)
Info: Max frequency for clock                 '$glbnet$clk_sdr': 202.63 MHz (PASS at 125.00 MHz)
Info: Clock '$glbnet$sdram_clk$TRELLIS_IO_OUT' has no interior paths

Info: Max delay <async>                                  -> <async>                                : 3.31 ns
Info: Max delay <async>                                  -> posedge $glbnet$clk_25mhz$TRELLIS_IO_IN: 10.61 ns
Info: Max delay posedge $glbnet$clk_25mhz$TRELLIS_IO_IN  -> <async>                                : 24.89 ns
Info: Max delay posedge $glbnet$clk_25mhz$TRELLIS_IO_IN  -> posedge $glbnet$clk_sdr                : 19.24 ns
Info: Max delay posedge $glbnet$clk_25mhz$TRELLIS_IO_IN  -> negedge clkout                         : 13.77 ns
Info: Max delay posedge $glbnet$clk_sdr                  -> <async>                                : 5.04 ns
Info: Max delay posedge $glbnet$sdram_clk$TRELLIS_IO_OUT -> posedge $glbnet$clk_25mhz$TRELLIS_IO_IN: 8.62 ns
Info: Max delay negedge clkout                           -> posedge $glbnet$clk_25mhz$TRELLIS_IO_IN: 6.41 ns

Info: Slack histogram:
Info:  legend: * represents 14 endpoint(s)
Info:          + represents [1,14) endpoint(s)
Info: [-11242,  -6569) |*+
Info: [ -6569,  -1896) |+
Info: [ -1896,   2777) |+
Info: [  2777,   7450) |***+
Info: [  7450,  12123) |*+
Info: [ 12123,  16796) |************************************************************ 
Info: [ 16796,  21469) |*********+
Info: [ 21469,  26142) |******+
Info: [ 26142,  30815) |**************+
Info: [ 30815,  35488) |********+
Info: [ 35488,  40161) |***********+
Info: [ 40161,  44834) | 
Info: [ 44834,  49507) | 
Info: [ 49507,  54180) | 
Info: [ 54180,  58853) |+
Info: [ 58853,  63526) |*+
Info: [ 63526,  68199) |+
Info: [ 68199,  72872) | 
Info: [ 72872,  77545) |+
Info: [ 77545,  82218) |***+
```
