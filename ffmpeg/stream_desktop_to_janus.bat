@echo off


set janusIp=127.0.0.1
set janusPort=5004

title Stream to rtp://%janusIp%:%janusPort%
ffmpeg -y -loglevel warning -f gdigrab -i desktop -vf crop=960:1080:960:0 -r 10 -preset ultrafast -f rtp rtp://%janusIp%:%janusPort%
echo Finished

pause
