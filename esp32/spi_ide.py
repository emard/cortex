from machine import SPI,Pin                                                                                                                       

class SPI_IDE:

  def __init__(self):
    self.seln = Pin(17,Pin.OUT)
    self.seln(1)
    self.spi  = SPI(2,sck=Pin(16),mosi=Pin(4),miso=Pin(12),baudrate=3000000)
    self.buf  = bytearray(8)
    self.get  = bytearray([1,0,0,0,0,0,0,0])
    self.data = bytearray(512)
    self.dsk  = open("/sd/cortex/unix.dsk","ab+")
    self.wr   = bytearray([4])
    self.rd   = bytearray([3])
    self.mode = 0
    self.rec  = 0
    self.dbg  = 0
    self.bsy  = Pin(5,Pin.IN)
    self.bsy.irq(handler=self.action, trigger=Pin.IRQ_RISING)
    self.seln(0)
    
  def action(self, pin):
    if self.mode==0x00:
      self.spi.write_readinto(self.get, self.buf)

      if self.buf[7]==0xef:
        if self.dbg: print("-- set feature")
        self.buf[0] = 2
        self.buf[1] = 0
        self.buf[7] = 0
        self.spi.write(self.buf)

      elif self.buf[7]==0x20:
        self.sec = self.buf[3] + 256*self.buf[4]
        if self.dbg: print("-- read sector 0x%04x" % self.sec)
        self.dsk.seek(512*self.sec)
        self.dsk.readinto(self.data)
        self.spi.write(self.wr)
        self.spi.write(self.data)
        self.mode = 0x20
        self.buf[0] = 2
        self.buf[1] = 0
        self.buf[7] = 0x08
        self.spi.write(self.buf)

      elif self.buf[7]==0x30:
        self.sec = self.buf[3] + 256*self.buf[4]
        if self.dbg: print("-- write sector 0x%04x" % self.sec)
        self.mode = 0x30
        self.buf[0] = 2
        self.buf[1] = 0
        self.buf[7] = 0x08
        self.spi.write(self.buf)

      else:
        print("Unsupported IDE command")
        print("cmd=0x%02x" % self.buf[7])

    elif self.mode==0x20:
      self.mode = 0x00
      self.buf[0] = 2
      self.buf[1] = 0
      self.buf[7] = 0
      self.spi.write(self.buf)
    
    elif self.mode==0x30:
      self.spi.write(self.rd)
      self.spi.readinto(self.data)
      self.dsk.seek(512*self.sec)
      self.dsk.write(self.data)
      self.mode = 0x00
      self.buf[0] = 2
      self.buf[1] = 0
      self.buf[7] = 0
      self.spi.write(self.buf)

spi = SPI_IDE()

    