@echo off
chcp 866
call adm
cls
title Choice
goto choice

:choice
echo Are you sure you want to restore the system? (y/n)
Set /p choice="You choice: "
if not defined choice goto choice
if "%choice%"=="y" (goto restore)
if "%choice%"=="n" (exit)

:restore
title Restoring
dism /Online /Cleanup-Image /RestoreHealth
sfc /scannow
taskkill /IM explorer.exe /F   
cd /d %userprofile%\AppData\Local
del IconCache.db /a
explorer.exe

:adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)
