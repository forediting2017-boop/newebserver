@echo off
title SplitVerse AI - Quick Setup
cd /d %~dp0

echo ================================================================
echo               SPLITVERSE AI - AUTOMATED SETUP
echo ================================================================
echo.
echo Installing backend dependencies...
cd /d %~dp0server
call npm install

echo.
echo Installing frontend dependencies...
cd /d %~dp0client
call npm install

echo.
echo Creating server environment file if not present...
cd /d %~dp0server
if not exist .env (
    copy .env.example .env
    echo Created server/.env from template.
)

echo.
echo ================================================================
echo Setup complete! You can now run start.bat to launch SplitVerse AI.
echo ================================================================
pause
