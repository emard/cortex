# The mini-Cortex and ancient Unix

## Introduction

In 1983 a few engineers at TI's chip division in the UK designed a 16 bit home computer around the 99xx architecture in a skunkworks project. They published their work in a hobby electronics magazine, *Electronics Today*. This machine is the [Powertran Cortex](http://www.powertrancortex.com). The basic specs are:
* TMS9995 CPU (16-bit internal, 8-bit bus)
* 64KB RAM, 24KBROM
* 74LS612 memory mapper
* DMA-based floppy disk controller
* TMS9918 VDP

The Powertran Cortex remained a niche machine: estimates are that some 200 machines were built by the magazine's readership. Initially it only ran a version of TI's Powerbasic that was included in its ROMs. However, it was probaly the best engineered home computer of all TI's machines and has some interesting software.

In the late 70's John Walker and a few of his associates were trying to set up a computer business as a side project to their day jobs. One of the products was the *Marinchip M9900*, an S-100 bus machine built around a TMS9900 CPU card and 16-bit memory cards. For this system they built two (closely related and binary compatible) operating systems: *MDEX* and *NOS*. The former is a small single-user OS, similar to early C/PM. The latter is a multi-user, distributed OS, somewhat akin to Unix or Flex. [This software survived,see this page](http://www.powertrancortex.com/documentation.html). One of the software packages was *Interact*, which was a program to create (engineering) drawings. This package got some market traction and John & co. abadoned their earlier work to focus on this project. It became well-known as AutoCAD. The MDEX and NOS software was ported to the Cortex around 1985 (but Interact is unfortunately lost).

Between 2012 and 2015 I designed an eurocard-sized version of the Cortex, using a mix of original and more recent chips (with help from Stuart Conner, Dave Hunter and Jim Hearne). The disk controller was replaced by a directly addressed CF Card. This project became the [Mini-Cortex](http://www.stuartconner.me.uk/mini_cortex/mini_cortex.htm). My main goal was to create a board that I could use to port ancient Unix to the TI9900 architecture, something that I had wanted to do since the early 80's. Early in 2015 the compiler had progressed enough to run [Xinu](https://www.amazon.com/Operating-System-Design-XINU-Approach/dp/0136375391), and soon after LSX Unix (a trimmed down Unix V6). It currently runs a V6+ kernel combined with a small V7 style userland.

For this work I'm indebted to Warren Toomey and Dave Pitts. Warren organizes the [Unix Heritage Society](https://www.tuhs.org) and managed to assemble an [invaluable archive](https://minnie.tuhs.org/cgi-bin/utree.pl) of early Unix source code. Dave ported Cortex Unix to the [original TI990 mini computers](http://www.cozx.com/dpitts/ti990.html), cleaned up the build system and much expanded the userland software. Also, my development similator is based on his work.

The development repo for the [Unix source code is located here](https://www.jslite.net/cgi-bin/9995/timeline).

# Port to the ULX3S

This repo has a verilog model of the Mini-Cortex. It uses standard Verilog and currently runs on the [ULX3S FPGA board](https://www.crowdsupply.com/radiona/ulx3s).

It uses a CPU with a 16-bit "external" bus and runs at 6.25MHz - this is slightly above the original maximum speed (6Mhz). The microcoded CPU design is based on the TMS99000 chip and hence I refer to the CPU as a "99095". It is close to cycle accurate.

The CF Card of the Mini Cortex has been replaced by an SPI link to the ESP32 processor on board of the ULX3S. To the CPU it looks like it is talking to a standard IDE interface (which is a WD1002 contoller, to be period correct). The ESP32 then fetches the requested sector from a disk image file and sends it back to the IDE interface stub.

The current model does not include the TMS9918/F18A chip of the Mini Cortex. I may add this at a later point in time.

The model has 8KB of ROM with just the [EVMBUG monitor]() program in it. This can be accessed via the FTDI232 USB serial link (9600 8N1). A new command - UNX - starts the Unix boot.

# Building

The repo contains everything you need to build the project using the Open Source tool chain. The build process is documented in the **make.sh** build script:
* Yosys should only report two warnings, both for tri-state support. The design necessarily uses two tris-tate buses (the SDRAM databus and the SPI miso line) and these warnings cannot be avoided.
* NextPNR should operate wihout warnings or errors. Fmax timing limits should be comfortably within bounds (reporting >30Mhz for the CPU clock and >180MHz for the SDRAM clock).
Sample output of the build process is [available here](https://gitlab.com/pnru/cortex/-/blob/master/doc/build_report.md).

On the ESP32 make sure you have Micropython installed, and Emard's **ecp5** and **uftpd** modules. Make sure uftpd is running. The make script will install:
* spi_ide.py to the root directory
* the disk image file to /sd/unix.dsk
* send the compiled model (cortex.bit) to the FPGA

Make sure that you start the spi_ide module (it auto-starts after import). To connect, use a terminal program on the FTDI serial line. On Linux or MacOS the program *screen* will be sufficient.

# First run

Start the monitor ROM by pressing the enter key. The response should be:
```
EVMBUG R1.0
MON? 
```
Documentation for the [EVMBUG monitor is here](https://gitlab.com/pnru/cortex/-/blob/master/doc/evmbug.md). To start the Unix boot process enter the command `UNX`. Unix should now boot. If it appears to hang, probably the SPI_IDE module on the ESP32 is not running.
```
EVMBUG R1.0
MON? UNX

Mem........512KB
Login:
```
At the login prompt type `root` (no password needed) and you will end up in a super user shell. The available user programs are in `/bin`.

If the machine hangs, press btn0 (PWR) to reset and restart.

# Hacking

For a list of resources and hacking ideas, [see this page](https://gitlab.com/pnru/cortex/-/blob/master/doc/hacking.md)

