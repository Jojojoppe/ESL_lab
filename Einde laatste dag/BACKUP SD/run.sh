#!/bin/sh

echo Copy main.c
ssh $1 'cat ~/Documents/UT/ESL/ESL_lab/opd_8/main.c' > main.c
echo Compile main.c
gcc -g -o main main.c $(pkg-config --cflags --libs gstreamer-1.0 gstreamer-app-1.0)
echo Run application
./main /dev/video0
