@echo off
title Splitwise Calculator Pro - Mobile Phone Server
cd /d "%~dp0"

echo ================================================================
echo     SPLITWISE CALCULATOR PRO - MOBILE SINGLE-PORT SERVER
echo ================================================================
echo.

for /f "delims=" %%a in ('node -e "const os = require('os'); const nets = os.networkInterfaces(); for (const name of Object.keys(nets)) { for (const net of nets[name]) { if (net.family === 'IPv4' && !net.internal) { console.log(net.address); process.exit(0); } } }"') do set "LOCAL_IP=%%a"

if "%LOCAL_IP%"=="" set "LOCAL_IP=192.168.1.9"

echo   To use this app on your phone:
echo.
echo   1. Connect your phone to the same Wi-Fi network as this PC.
echo   2. Open Chrome, Safari, or Brave on your phone.
echo   3. Navigate to:
echo.
echo        http://%LOCAL_IP%:5000
echo.
echo   ==============================================================
echo   Starting server now... (Keep this window open)
echo ================================================================
echo.

node server/src/server.js
pause
