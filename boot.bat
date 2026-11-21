
@echo off
title boot

:boot
if not exist "%USERPROFILE%\Documents\bat os\apps\" (
    echo [error] \bat os\apps
) else (
    echo [ok] \bat os\apps
)

if not exist "%USERPROFILE%\Documents\bat os\system\" (
    echo [error] \bat os\system
) else (
    start "" "%USERPROFILE%\Documents\bat os\system\system.bat"
)

if not exist "%USERPROFILE%\Documents\bat os\userdata\" (
    echo [error] \bat os\userdata
) else (
    start "" "%USERPROFILE%\Documents\bat os\system\system.bat"
)

set /p batman=root$ 

if "%batman%"=="batman -install pack" (
    mkdir "%USERPROFILE%\Documents\bat os\apps"
    timeout /t 1 /nobreak >nul
    echo [ok] \bat os\apps

    mkdir "%USERPROFILE%\Documents\bat os\system"
    timeout /t 1 /nobreak >nul
    echo [ok] \bat os\system

    mkdir "%USERPROFILE%\Documents\bat os\userdata"
    timeout /t 1 /nobreak >nul
    echo [ok] \bat os\userdata
)

if "%batman%"=="whoami" echo [root] %USERNAME%
