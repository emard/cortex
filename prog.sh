#! /bin/sh

# us below when the ULX3S board has uPython with uftpd/ecp5 installed
# adjust IP address as needed. NOTE: code assumes that an SD card has been
# mounted as /sd !!
#
ftp me@192.168.1.128 <<EOF
mkdir /sd/cortex
put esp32/unix.dsk /sd/cortex/unix.dsk
put cortex_12F.bit /sd/cortex/cortex_12F.bit
put esp32/spi_ide.py spi_ide.py
put cortex_12F.bit fpga
bye
EOF

# use the ESP32/uPython web interface to start the disk server:
# >>> import spi_ide
# >>>
#

