# -fps frame/s -x wide -p Port number
./mjpg_streamer -i "./input_raspicam.so -fps 30 -q 85 -x 1280 -y 720" -o "./output_http.so -p 8081 -w ./www" &

