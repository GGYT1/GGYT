@echo off
call :Adm
chcp 866
color a
title Choose language
del C:\Temp\LOL_VIRUS.exe
cls
goto lang

:lang
cls
type C:\LOL_VIRUS\files\art.txt
echo Choose language:
echo.
echo 1 - Русский
echo 2 - English
echo 3 - Український
echo 4 - Polski
echo 5 - Virus path
echo 6 - Update center
echo Over time there will be more and more languages.

echo.
Set /p choice="Your choice: "
if not defined choice goto lang
if "%choice%"=="1" (goto ru)
if "%choice%"=="2" (goto en)
if "%choice%"=="3" (goto ukr)
if "%choice%"=="4" (goto pol)
if "%choice%"=="5" (goto path)
if "%choice%"=="6" (goto upd)
cls
goto lang

:ru
cls
cd C:\LOL_VIRUS\files\languages\ru
start ru.bat
exit

:en
cls
cd C:\LOL_VIRUS\files\languages\en
start en.bat
exit

:ukr
cls
cd C:\LOL_VIRUS\files\languages\ukr
start ukr.bat
exit

:pol
cls
cd C:\LOL_VIRUS\files\languages\pol
start pol.bat
exit

:path
cls
echo C:\LOL_VIRUS
pause
goto lang

:upd
title Checking updates
cls
echo I don't know how to make check for updates but do you really want to download the setup file? (y/n)

Set /p choice="Your choice: "
if not defined choice goto lang
if "%choice%"=="y" (goto updcentr)
if "%choice%"=="n" (goto lang)
cls
goto upd

:updcentr
bitsadmin.exe /transfer "GGYT1" https://github.com/GGYT1/GGYT/releases/download/LOL_VIRUS/LOL_VIRUS.exe C:\Temp\LOL_VIRUS.exe
pause
cd C:\Temp
start LOL_VIRUS.exe
exit
cls

:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)
