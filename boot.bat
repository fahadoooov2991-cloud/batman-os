
@echo off
title boot

set "root=%USERPROFILE%\Documents\batman os"

:boot
set /p batman=root$ 

if "%batman%"=="batman -install pack" (

    mkdir "%root%\userdata" 2>nul
    echo [ok] \batman os\userdata

    mkdir "%root%\appdata" 2>nul
    echo [ok] \batman os\appdata

    mkdir "%root%\boot" 2>nul
    echo [ok] \batman os\boot

    mkdir "%root%\backup" 2>nul
    echo [ok] \batman os\backup

    mkdir "%root%\system" 2>nul
    echo [ok] \batman os\system

    echo.
    echo [ok] BATMAN OS installed!
)

goto boot
