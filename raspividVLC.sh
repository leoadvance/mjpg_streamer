# transmit video by VLC
# -w width 64~1920
# -h height 64~1080
# -b bitrate  MAX 25000000  For H264, 1080p30 a high quality bitrate would be 15Mbits/s or more but much over 17Mbits/s won't show  noticeable improvement at 1080p30.
# -o output filename
# -t timeout setting 0 will mean the application will run continuously until stopped with Ctrl-C.
# -fps framerate  2~30
# -n Do not display a preview window
raspivid -o - -t 0 -n -fps 30 -b 16000000 -w 1920 -h 1080 | cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:8160}' :demux=h264
