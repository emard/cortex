# Hacking the Mini-Cortex

Before getting to current projects, a bit of history how it all came about.

### Back in 2013...

The Mini-Cortex started out with a build of Stuart Conner's [TMS9995 breadboard system](http://www.stuartconner.me.uk/tms9995_breadboard/tms9995_breadboard.htm):

![](http://www.stuartconner.me.uk/tms9995_breadboard/images/assembly_top.jpg)

This little system was already enough to serve as a test target for a C compiler for the 9995 and somewhere in 2014 this board ran Xinu programs. From here it developed into the Mini-Cortex and the journey is documented in [this (long, long) thread](http://www.vcfed.org/forum/showthread.php?15580-Powertran-Cortex&p=307738#post307738) in the Vintage Computing forum.

### Adding a "disk"

To further develop the system it needed the equivalent of a floppy or harddisk. The simplest route was to add a CF Card and attach it to the CPU bus directly, using it as memory device:

![](https://ruizendp.websites.xs4all.nl/board.jpg)

This choice was convenient at the time, but became a bit restrictive later on (see projects below). This system was capable of running the LSX Unix system. This was a single user version of V6 Unix developed by Heinz Lycklama at Bell Labs for use on LSI-11 systems without MMU.

### Adding an MMU

The next step was adding an MMU. The choice was to stay close to the Powertran Cortex and use a 74LS612 memory mapper chip for this purpose. As I was getting concerned that the breadboard would become unstable if enlarged even further, I designed a PCB for it. It is a Eurocard sized (10x16 cm) 2-layer PCB with all through-hole components:

![](https://ruizendp.websites.xs4all.nl/IMAG0266.jpg)

This board supported the port of V6 Unix and several features from V7 and later. With a second TMS9902 serial chip piggy-backed on top of the first it even supports a TCP/IP stack. However, running this software also showed the limitations of the design and I was planning to do another PCB, this time with a TMS99105 CPU, 1MB of ram, DMA-based disk access and a more powerfull MMU. 

### Enter the ULX3S

Erik Piehl (a.k.a. *Speccery*) convinced me that doing the prototyping in an FPGA board was a better way to go. The emergence of an efficient and capable open source tool chain and of [the ULX3S board](https://www.crowdsupply.com/radiona/ulx3s) cemented the choice:

![](https://radiona.org/ulx3s/assets/img/legend.png)

As of Summer 2020 the status of work is that the Mini Cortex has been implemented in pure Verilog and runs the same Unix software as the original Mini-Cortex. The only thing that is not implemented yet is the TMS9918 VDP (or more accurately the F18A plug-in) -- this is not used for Unix.

## Background reading & questions
**TMS99xx chip family**
Wikipedia has a short introduction for the [TI990 mini computer](https://en.wikipedia.org/wiki/TI-990) archtiecture, on which the 9900 series of microprocessors is based. Beyond that, the chip datasheets provide a wealth of information:

* The 9995 CPU datasheet is [here](https://ftp.whtech.com/datasheets%20and%20manuals/Datasheets%20-%20TI/TMS9995.pdf)
* The 99105 CPU datasheet is [here](https://ftp.whtech.com/datasheets%20and%20manuals/Datasheets%20-%20TI/TMS99000/MP009_99105A_99110A_Nov82.pdf)
* The 9902 UART datasheet is [here](https://ftp.whtech.com/datasheets%20and%20manuals/Datasheets%20-%20TI/TMS9902_dataSheet_Jan77.pdf)
* The 9911 DMA controller datasheet is [here](http://www.powertrancortex.com/hardware/datasheets/TMS9911.pdf) (note: the Mini Cortex does not use this chip, but a future design will)

**Ancient Unix**
Ancient Unix generally refers to the 16-bit Unix versions of the 1970's, but increasingly also to the 32-bit versions of the 1980's. They all share the unique property that the amount of source code is manageable and the entire system can be understood by a single person on a hobby time budget.

The most well known book about early Unix is [John Lyons' *Commentary on Unix*](https://en.wikipedia.org/wiki/Lions%27_Commentary_on_UNIX_6th_Edition,_with_Source_Code), which was the most copied book of its time.

The source code to many early versions of Unix can be found on the [Unix Tree page](https://www.tuhs.org/cgi-bin/utree.pl) of the Unix Heritage Society.

**Fora and mailing lists**

* For access to people knowlegable about 9900 chip family, visit the [development forum](https://atariage.com/forums/forum/119-ti-994a-development/) in the TI99/4A section of AtariAge.
* For access to people knowledgable about the ULX3S board and Verilog development, visit the [developers forum](https://gitter.im/ulx3s/Lobby) on Gitter.
* For access to people knowledgeable about ancient Unix, join the mailing list of the [Unix Heritage Society](https://www.tuhs.org).

## Suggested projects

Below a list of some useful projects to further progress Unix on the TI990 archtecture.

* The C compiler was developed targetting the 9995 CPU. This chip is internally 16-bit, but uses an 8-bit bus. There are 128 words of 16-bit memory on-chip, and the compiler always places the register file in this area. For a 99105 based design (incl. the ULX3S model) this is inefficient and it would be better to place the register file in the stack frame.

* The networking stack for the Mini-Cortex uses a second 9902 serial line chip, connected to a Raspberry Pi Zero-W to provide a SLIP "dial up" service. The ESP32 module on the ULX3S can only provide a PPP based "dial up" service. Modifying the serial driver to work with PPP internet enables the ULX3S implementation.

* Accessing the CF Card without DMA and using 8-bit accesses is a drain on performance. To modify this to use a 'normal' IDE interface and to add a (Verilog) TMS9911 DMA chip - along with the necessary changes to the Unix kernel - would rectify this.

* The '612 mapper based MMU is limited. It is better to replace this with a fast dual ported SRAM chip (i.e. block RAM on an FPGA) would be both faster and more flexible. This design would beperiod correct, as it was used in some mini-computers (e.g. the DG Eclipse) and super-micros from the early 80's (e.g. the Onyx S8000).

* The current Verilog CPU is essentially a 9995 with a 16-bit bus. It does not have separate user/supervisor modes. This is available on the 99105 CPU. Extending the Verilog CPU with user/supervisor modes would enable a system that a bad user program cannot easily crash.

Happy Hacking!
