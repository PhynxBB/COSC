#!/usr/bin/python3

import socket

# Can be written as socket.socket cause AF_INET and SOCK_STREAM are defaults
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

ipaddr= '127.0.0.1'
port = 54321

s.connect((ipaddr, port))

# Cant send strings so convert into byte like object with b prefix
s.send(b'Hello\n')

# Use a buffersize that is a power of 2 and not too big
response, conn = s.recvfrom(1024)

# Response is returned as a byte like object, so decode with .decode() method
print(response.decode())

s.close()

