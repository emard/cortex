#!/bin/sh

# Build Mini-Cortex system for a 12F ULX3S board

# build simulation model & check syntax
#iverilog sys.v tms99095.v tms9902.v rom.v sdram.v spi_ide.v misc.v sys_tb.v

# synthesise design
yosys -q -p "synth_ecp5 -json sys.json" sys.v tms99095.v tms9902.v rom.v sdram.v spi_ide.v misc.v pll.v

# place & route
# assumes 25F device
nextpnr-ecp5 --12k --package CABGA381 --json sys.json --lpf ulx3s.lpf --textcfg sys.cfg

# pack bitstream
# idcode only needed when sending bitstream to 12F devices
#ecppack  sys.cfg sys.bit --idcode 0x21111043
ecppack  sys.cfg sys.bit --compress

# send to ULX3S board (store in configuration RAM)
#ujprog sys.bit
