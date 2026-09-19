@echo off
title SplitVerse AI Launcher
cd /d %~dp0

echo ================================================================
echo               SPLITVERSE AI - FULL STACK LAUNCHER
echo ================================================================
echo.

:: Detect local Wi-Fi / Ethernet IP address dynamically
for /f delims= %%a in ('node -e const os = require('os'); const nets = os.networkInterfaces(); for (const name of Object.keys(nets)) { for (const net of nets[name]) { if (net.family === 'IPv4' && !net.internal) { console.log(net.address); process.exit(0); } } }') do set LOCAL_IP=%%a

if %LOCAL_IP%==" set LOCAL_IP=localhost

echo [Phone Access URL] http://%LOCAL_IP%:5000 (All-in-One, Recommended)
echo [Phone Dev URL] http://%LOCAL_IP%:5173 (Vite Dev Server)
echo [PC Browser URL] http://localhost:5000
echo.
echo * Connect phone and PC to the same Wi-Fi for instant mobile testing.
echo * Port 5000 serves both frontend & backend with zero CORS or proxy issues!
echo ================================================================
echo.

:: Launch backend in a separate titled window
start SplitVerse AI Backend (Port 5000) cmd /k cd /d %~dp0server && npm run dev

:: Launch frontend in a separate titled window
start SplitVerse AI Frontend (Port 5173) cmd /k cd /d %~dp0client && npm run dev

echo Both servers have been launched in separate dedicated windows!
echo Open http://localhost:5000 in your browser.
echo.
pause
