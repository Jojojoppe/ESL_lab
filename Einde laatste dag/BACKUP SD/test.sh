#!/bin/sh
gst-launch-1.0 -vvv -e \
	v4l2src device=/dev/video0 \
	! 'video/x-raw,format=YUY2,width=640,height=480,framerate=30/1' \
	! appsink emit-signals=true sync=true drop=true max-buffers=1
