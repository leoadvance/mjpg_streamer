# -fps framerate
# -x width
# -y height
# -p Http Port 

./mjpg_streamer -i "./input_raspicam.so -fps 30 -q 85 -x 1920 -y 1080" -o "./output_http.so -p 8081 -w ./www" &

