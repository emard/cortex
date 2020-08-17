#! /bin/sh

# us below when the ULX3S board has uPython with uftpd/ecp5 installed
# adjust address as needed
ftp me@192.168.1.128 <<EOF
put disk/unix.dsk /sd/unix.dsk
put spi_ide.py
put sys.bit fpga
bye
EOF

# use the ESP32/uPython web interface to start the disk server:
# >>> import spi_ide
# >>>
#

