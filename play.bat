@echo off
REM Launches the Six-Sided Streets dev server and opens it in your default browser.

cd /d "%~dp0"

REM Start the dev server in a new window so this script can continue.
start "hex-game dev server" cmd /k "npm run dev"

REM Give webpack-dev-server a few seconds to spin up before opening the page.
timeout /t 5 /nobreak >nul

start "" "http://localhost:8000"

exit /b 0
