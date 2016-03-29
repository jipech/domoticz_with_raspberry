#!/usr/bin/env python3

from gpiozero import LED
from time import sleep

led = LED(21)

from socket import *
serverSocket = socket(AF_INET, SOCK_STREAM)
#Prepare a sever socket
serverPort = 8888
serverName = '192.168.1.229'
serverSocket.bind((serverName,serverPort))
serverSocket.listen(1)

while True:
    #Establish the connection
    connectionSocket, addr = serverSocket.accept()

    message = connectionSocket.recv(4096)
    akce = message[0:1]
    akce=int(akce)
    if (akce):
      led.on()
    else:
      led.off()
    connectionSocket.close()
 
