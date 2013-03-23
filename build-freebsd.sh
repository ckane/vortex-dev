#!/bin/sh
# As long as you've build glib-2.x, libnids, libnet11 from ports, this should work

clang -c vortex.c -I/usr/local/include
clang -o vortex vortex.o -L/usr/local/lib -lnids -L/usr/local/lib/libnet11 -lnet -lgthread-2.0 -lpcap
