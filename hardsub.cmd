echo off

 set fl=%~1
 set fn=%~n1
 
 copy "%fn%.ass" temp.ass

 ffmpeg -i "%fl%" -vf ass=temp.ass -vcodec libx264 -b 7000k -s 1280x720 -y "%fn% Sub.mp4"

 del temp.ass
:: ffmpeg -i "North Island New Zealand.mp4" -vf ass=NorthIsland.ass -vcodec libx264 -b 7000k -s 1280x720 -acodec libmp3lame -ab 96k -y "North Island New Zealand Sub.mp4"