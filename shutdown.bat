@echo off

setlocal enabledelayedexpansion

set d=%date%

set t=%time: =0%
set hh=%t:~0,2%
set dev=3
set /a ans=%hh%%%dev%

echo %ans%

if %ans% equ 0 (
    echo %d% %t% shutdown >> c:\Logs\shutdown.log
    shutdown /s /f /t 0
) else (
    echo %d% %t% running >> c:\Logs\shutdown.log
)

endlocal

exit 0
