@echo off

 set mp3file=%~1
 set mp3name=%~n1

 ffmpeg -i "%mp3file%" 2>&1 | find "Duration" > d.txt
 for /F "eol=, tokens=2 delims=, " %%i in (d.txt) do (
     ffmpeg -t %%i -f lavfi -i color=c=blue:s=1280x720 -c:v libx264 -tune stillimage -pix_fmt yuv420p temp.mp4
 )
 del d.txt

 ffmpeg -i temp.mp4 -i "%mp3file%" -c copy -map 0:v:0 -map 1:a:0 "%mp3name%.mp4"
 del temp.mp4

 copy template.ass "%mp3name%.ass"

