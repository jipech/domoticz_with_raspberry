#!/usr/bin/env python
import sys
import os
import time
import smbus
bus = smbus.SMBus(1)

import urllib2

server="http://ip.server"
port="8080"
idx="ID"

def temperature():
   address = 0x48
   teplota = bus.read_byte_data(address, 0)
   return teplota

teplota=str(temperature())

adresa=server+":"+port+"/json.htm?type=command&param=udevice&idx="+idx
adresa=adresa+"&nvalue=0&svalue="+teplota
f =  urllib2.urlopen(adresa)
f.read()
