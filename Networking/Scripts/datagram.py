#!/usr/bin/python3
import socket
import os
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)


ipaddr = input('Enter an IP\n> ')
port = input('Enter a Port\n> ')
os.system('clear')
data = "test!\n"

s.sendto(data.encode(), (ipaddr,int(port)))

response, conn = s.recvfrom(1024)

print(response.decode())

