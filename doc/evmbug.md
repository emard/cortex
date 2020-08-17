# EVMBUG

Text courtesy of Stuart Conner:
http://www.stuartconner.me.uk/tibug_evmbug/tibug_evmbug.htm#evmbug

# Introduction

EVMBUG is, like TIBUG, a debug monitor which provides an interactive interface between the user and the computer through a serial interface. The only product that used it seems to be the TMS 9995 evaluation module (TMAM 6095), which is a standalone microcomputer board that supports evaluation of TMS 9995 software and hardware features as well as prototyping of TMS 9995 interfaces. It was supplied on a 4K byte and 2K byte EPROM under part number 1603154.

EVMBUG provides a number of commands, and a set of utility subroutines accessed through XOP calls for reading and writing to the terminal.

# Modifications

EVMBUG has been modified for easier use in today's world:
- The baud rate and character size has been fixed at 9600 8N1
- You still need to press a key after reset to show the title prompt
- Input in both lower and upper case is accepted
- The TNF command has been replaced by the UNX command
- Set your terminal to send <CR> for the Enter key

# Memory Use

EVMBUG uses the memory area >EC00 - >EC54 for workspaces and other data storage.

# EVMBUG Commands

Notes:

All operands are hexadecimal.

**IM** (Inspect/Change Memory)

`Format: IM [<start address>]<Return>`

Displays memory address, contents, and opens the memory location for a change. The start address defaults to `>0000` if not specified. Pressing `<Return>` writes any specified new value and returns to the command prompt. Pressing `<Space>` writes any specified new value and display the next address. Pressing `<Minus>` writes any specified new value and displays the previous address.

**DM** (Dump Memory)

`Format: DM [<start address>],[<stop address>]<Return>`

Displays the contents of memory from the start address to the stop address. Both addresses default to `>0000` if not specified. Each line of output consists of the address of the first data word followed by eight data words. Pressing any key during a memory listing terminates the process.

**IWR** (Inspect/Change Workspace Register)

`Format: IWR [<register number>]<Return>`

If no register number is specified, the command displays the contents of all the workspace registers and returns to the command prompt. The workspace is at the location pointed to by the workspace pointer set through the 'IR' command (this defaults to one of EVMBUG's own workspaces at `>EC00` at power on).

If a register number is specified, the command displays the contents of the specified register. A new value can be specified. Pressing `<Return>` writes any specified new value and returns to the command prompt. Pressing `<Space>` writes any specified new value and display the next register. Pressing `<Minus>` writes any specified new value and displays the previous register.

**IR** (Inspect/Change WP, PC and ST Registers) 

`Format: IR<Return>`

Displays first the value of the workspace pointer (WP). A new value can be specified. Pressing `<Return>` writes any specified new value and returns to the command prompt. Pressing `<Space>` writes any specified new value and displays the value of the program counter (PC) followed by the status register (ST), which can be inspected and changed in the same way.

**EX** (Execute)

`Format: EX<Return>`

Starts program execution using the values in the workspace pointer, program counter and status register set through the 'R' command.

To return from a user program to EVMBUG, use the instruction `B @>0080` or `B @>0142`.

**EXB** (Execute With Breakpoint)

`Format: EX [<breakpoint address>]<Return>`

If a breakpoint address is specified, the command installs a breakpoint at the specified address then starts program execution using the values in the workspace pointer, program counter and status register set through the 'IR' command. When the breakpoint address is executed, the contents of the workspace pointer, program counter and status register are displayed and control returns to the command prompt. To continue running the program, either use the 'EXB' command again to break at another point later in the program, or use the 'EX' command.

The breakpoint address must be in RAM and must be the first word of an instruction.

If no breakpoint address is specified, the 'EXB' command performs the same as the 'EX' command.

**SS** (Single Step)

`Format: SS<Return>`

Executes one instruction using the values in the workspace pointer, program counter and status register set through the 'IR' command, the prints the contents of the workspace pointer, program counter and status register. Successive instructions can be executed by repeated 'SS' commands.

Note that incorrect results are obtained when the 'SS' command causes execution of an XOP instruction.

**IC** (Inspect/Change CRU) 

`Format: IC [<CRU base address>],[<count>]<Return>`

Displays <count> CRU bits, right justified, read from the CRU base address. The base address defaults to `>0000` if not specified, and the count to 0 (=16 CRU bits).A new value for the specified bits can be specified. Pressing `<Return>` writes any specified new value and returns to the command prompt. Pressing `<Space>` or `<Minus>` writes any specified new value and displays the same CRU bits again.

**FD** (Find) 

`Format: FD [<start address>],[<stop address>],[<value>]{<Return> or <Minus>}`

Compares the contents of memory locations from the start address to the stop address with the value specified, and prints the memory addresses whose contents equal the given value. The default for all three parameters, if not specified, is `>0000`.

If the command entry is terminated with <Return>, the search will be for a word with the specified value. If the command entry is terminated with <Minus>, the search will be for a byte with the value in the right byte of the specified value.

**HEX** (Hex Arithmetic)

`Format: HEX [<number 1>],[<number 2>]<Return>`

Prints the sum and difference of the two numbers given.

**DMC** (Dump RAM Image)

Command intended to be used with a TI 733 ASR or equivalent data terminal with a cassette unit or an ASR 33 teletypewriter with a paper tape unit

`Format: DMC [<start address>],[<stop address>],[<entry address>],IDT=[<name>]<Space>`

Dumps data in 990 object record format from the memory start address to the stop address. The entry address is the address in memory of the start of the program.

**LMC** (Tag Format Loader)

Command intended to be used with a TI 733 ASR or equivalent data terminal with a cassette unit or an ASR 33 teletypewriter with a paper tape unit

`Format: LMC [<bias>]<Return>`

Loads data in 990 tagged object record format into memory. The optional bias parameter is the relocation bias (starting address in RAM), and defaults to >0. Nothing is displayed as data is loaded. After the data has loaded, the module identifier (IDT) is printed.

**UNX** (Boot Unix)

`Format: UNX<Return>`

Run the first stage boot loader for Unix

**XAE** (Line-By-Line Assembler, retain symbol table)

`Format: XAE [<start address>]<Return>`

Executes the resident Line-By-Line Assembler, starting assembly at the specified start address, and retaining any symbol table from a previous run of the assembler. For details of the assembler, see the 'XA' command below.

**XA** (Line-By-Line Assembler, clear symbol table)

`Format: XA [<start address>]<Return>`

Executes the resident Line-By-Line Assembler, starting assembly at the specified start address, and clearing the symbol table.

The assembler is largely the same as the Line-By-Line Assembler provided with the TI-99/4A Mini Memory cartridge. The instructions for this are available here. Noted differences to the TI-99/4A assembler are (apart from the obvious references to the TI-99/4A computer itself):

The SYM (symbol table display) directive is not supported (although symbols themselves are).
A text string entered with the TEXT directive is automatically terminated with a byte `>00`.
The END directive displays the number of unresolved references, but not the text "UNRESOLVED REFERENCES".

**XRA** (Disassembler)

`Format: XRA [<start address>],[<stop address>]<Return>`

Uses the resident disassembler to disassemble the code from the start address to the stop address.

**XCL** (Terminal Mode)

Command intended to be used with the TMS 9995 evaluation module only

`Format: XCL<Return>`

Switches the module operation mode to work with a TI AMPL development system connected to RS-232 port P2.

# XOP Utility Subroutines

EVMBUG provides seven utility subroutines for reading and writing to the terminal. These subroutines are called through the XOP (eXtended OPeration) instruction.

Most of the XOP format examples shown below use a register for the source address, however, all XOPs can also use a symbolic memory address or any of the other addressing formats available for the XOP instruction.

*Write 1 Hexadecimal Character to Terminal*

`Format: XOP Rn,8`

The least significant 4 bits of user register Rn are converted to their ASCII-coded hexadecimal equivalent ("0" to "F") and output to the terminal. Control returns to the instruction following the XOP instruction.

Example: if register Rn contains the value `>203C`, the character "C" is output to the terminal.

*Write 4 Hexadecimal Characters to Terminal*

`Format: XOP Rn,10`

The 4-digit hexadecimal representation of the contents of user register Rn is output to the terminal. Control returns to the instruction following the XOP instruction.

Example: if register Rn contains the value `>203C`, the characters "203C" are output to the terminal.

*Read Hexadecimal Word from Terminal*

```
Format: XOP  Rn,9
        DATA NULL
        DATA ERROR
        (next instruction)
```
The binary representation of the last 4 hexadecimal digits input from the terminal is accumulated in user register Rn. The termination character is returned in the most significant byte of register Rn+1. Valid termination characters are `<Space>`, `<Minus>`, `<Comma>` and `<Return>`. Control returns as follows:

If a valid termination character is the only input, control returns to the address in the word following the XOP instruction. Register Rn is unaltered.
If a non-hexadecimal character or an invalid termination character is input, control returns to the address in the second word following the XOP instruction. Registers Rn and Rn+1 are unaltered.
If a hexadecimal string followed by a valid termination character is input, control returns to the third word following the XOP instruction.

Examples:
```
XOP  R6,9
DATA >8000
DATA >8010
CLR  R0
```
User input: `12C<Return>`. Control returns to the instruction CLR R0 with register R6 containing `>012C` and R7 containing `>0D00`.

User input: `12345678<Return>`. Control returns to the instruction CLR R0 with register R6 containing `>5678` and R7 containing `>0D00`.

User input: `1234Z`. Control returns to address `>8010` (due to the invalid termination character "Z") with registers R6 and R7 unaltered.

User input: `<Return>`. Control returns to address `>8000` (due to no hexadecimal input) with register R6 unaltered and R7 containing `>0D00`.

*Write 1 Character to Terminal*

`Format: XOP Rn,12`

The ASCII character in the most significant byte of user register Rn is output to the terminal. The least significant byte of Rn is ignored. Control returns to the instruction following the XOP instruction.

Example: if register Rn contains the value `>5349`, the character "S" is output to the terminal.

*Read 1 Character from Terminal*

`Format: XOP Rn,13`

The ASCII representation of the next character input from the terminal is placed in the most significant byte of user register Rn. The least significant byte of Rn is set to zero. Control returns to the instruction following the XOP instruction after a character is read.

Example: if the next character input is "S", register Rn will contain the value `>5300`.

*Echo Character*

`Format: XOP Rn,11`

This is a combination of XOPs 12 (read character) and 13 (write character). The ASCII representation of the next character input from the terminal is placed in the most significant byte of user register Rn then written (echoed back) to the terminal. Control returns to the instruction following the XOP instruction after a character is read and written.

*Write Message String to Terminal*

`Format: XOP @MESSAGE,14`

The ASCII character string whose first character is at the symbolic address MESSAGE is output to the terminal. The string must be terminated with a byte `>00`. Control returns to the instruction following the XOP instruction after the character string is written.

Example:
```
       XOP  @MESS,14
...
...
MESS  TEXT 'HELLO WORLD'
      BYTE >00
```
The character string "HELLO WORLD" is output to the terminal.

# Error Codes

Several error messages are included in the EVMBUG monitor to alert the user to incorrect operation. In the event of an error, the word "ERROR" is output followed by a single digit giving the error number. These errors are:

* ERROR 0: invalid tag detected by the loader ('L' command).
* ERROR 1: invalid checksum detected by the loader ('L' command).
* ERROR 2: invalid command termination character entered. Re-enter the command and any parameters with a valid termination character.
* ERROR 3: dump RAM image address error (null address field, or stop address less than start address) (not used in this implementation).
* ERROR 4: invalid command entered. Enter a valid command.

# Example

An example of entering and running a simple program is shown below. User input is shown underlined (and must be followed by pressing <Return>). On lines where no label is to be input, remember to press <Space> to step over the symbol field before entering the instruction.
```
MON? XA ED00               Start assembling at address >ED00.
ED00 2FA0    XOP @TX,14    Print the text message at label TX.
ED02R0000                  ('R0000' indicates label TX is currently not defined)
ED04 2FA0    XOP @CR,14    Print the text message at label CR.
ED06R0000                  ('R0000' indicates label CR is currently not defined)
ED08 0460    B @>0142      Return to the monitor.
ED0A 0142
ED0C 4845 TX TEXT 'HELLO WORLD'  Define text message.
ED0E 4C4C
ED10 4F20
ED12 574F
ED14 524C
ED16 4400                  (Null byte to terminate text string added automatically)
ED02*ED0C                  (Address >ED02 now filled in with address of label TX)
ED18 0D0A CR DATA >0D0A    Data for text <CR><LF>.
ED06*ED18                  (Address >ED06 now filled in with address of label CR)
ED1A 0000    DATA 0        Null byte to terminate text string.
ED1C         END    0000   End program entry. Number of unresolved references displayed.
MON? IR                    Change WP, PC and ST registers.
W=0A7A EC00                (Press <Space> after entering address)
P=0000 ED00                (Press <Space> after entering address)
S=0922 0                   (Press <Return> after entering value)
MON? EX                    Execute program.
HELLO WORLD

MON?
```

