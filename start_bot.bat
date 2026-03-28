@echo off
setlocal enabledelayedexpansion
title StrangersBot

REM Change to this script's directory
cd /d "%~dp0"

REM Optional: make startup smooth by disabling strict single-instance lock
REM Set to 1 if you want the bot to block when another instance is running
set "STRICT_SINGLE_INSTANCE=0"

REM If you want to force a specific guild for instant slash command registration,
REM uncomment and set your server ID below:
REM set "GUILD_ID=1156881904394567751"

echo ==================================================
echo [START] Launching StrangersBot...
echo [INFO] Close this window to stop the bot
echo ==================================================

REM Prefer the Python launcher with a specific version; fall back to python
where py >nul 2>&1
if %ERRORLEVEL%==0 (
    py -3.12 bot.py
) else (
    python bot.py
)

echo.
echo [INFO] Bot process exited. Press any key to close...
pause >nul