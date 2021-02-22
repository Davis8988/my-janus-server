@echo off


set sdpFile=%~dp0test_sdp_file.sdp
ffplay -protocol_whitelist file,rtp,udp -i "%sdpFile%"


pause
