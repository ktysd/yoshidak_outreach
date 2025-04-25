ffmpeg -y -i wmv/media13.wmv -vf scale=320:150 -r 10 -frames 100 -an temp.mp4; ffmpeg -y -i temp.mp4 -vf pad=320:200:0:5 media13.mp4
