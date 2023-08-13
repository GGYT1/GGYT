@echo off
call :Adm
title Enter password...
chcp 866
color a
cls
goto pwd

:pwd
cls
type C:\LOL_VIRUS\files\art.txt
echo Please enter password (? if you need help)

echo.
Set /p choice="Password: "
if not defined choice goto pwd
if "%choice%"=="ggytprgs" (goto vir)
if "%choice%"=="?" (goto ?)
cls
goto pwd

:vir
title LOL_VIRUS By GGYT Progs and help from DiopinYT
cls
type C:\LOL_VIRUS\files\art.txt
echo Select an action:
echo.
echo 1 - Start computer explosion
echo 2 - Exit
echo 3 - DO NOT CHOOSE
echo 4 - Remove virus from startup
echo 5 - Update Center (not soon)
echo 6 - Where is the virus located?
echo 7 - ???

echo.
Set /p choice="Your choice: "
if not defined choice goto vir
if "%choice%"=="1" (goto q)
if "%choice%"=="2" (goto exit)
if "%choice%"=="3" (start C:\LOL_VIRUS\files\languages\en\NOT_OPEN_ME_PLEASE.html)
if "%choice%"=="4" (goto delregstartup)
if "%choice%"=="5" (goto vir)
if "%choice%"=="6" (goto path)
if "%choice%"=="7" (goto secrpwd)
cls
goto vir

:exit
set choice=0
cls
type C:\LOL_VIRUS\files\art.txt
echo Are you sure you want to exit? (y/n)
Set /p choice="Choice: "
if not defined choice goto exit
if "%choice%"=="n" (goto vir)
if "%choice%"=="y" (exit)
cls
goto exit

:q
cls
type C:\LOL_VIRUS\files\art.txt
echo Are you sure you want to do this? (y/n)

echo.
Set /p choice="ChOiCe: "
if not defined choice goto q
if "%choice%"=="y" (goto q2)
if "%choice%"=="n" (goto vir)
cls
goto q

:q2
cls
type C:\LOL_VIRUS\files\art.txt
echo LAST WARNING!!!
echo This application will turn on EVERY time you turn on your PC / LAPTOP !!! Are you confident in your actions? (y/n)
echo THINK!!!

echo.
Set /p choice="CHOICE: "
if not defined choice goto q2
if "%choice%"=="y" (goto xd)
if "%choice%"=="n" (goto vir)

:xd
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v LOL_VIRUS /t REG_SZ /d "C:\LOL_VIRUS\files\xd.bat"
cls
type C:\LOL_VIRUS\files\art.txt
goto yt

:yt
cd C:\LOL_VIRUS\files\
start base.html
goto yt

:delregstartup
cls
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v LOL_VIRUS
cls
type C:\LOL_VIRUS\files\art.txt
echo Virus from startup removed
pause
goto vir

:path
cls
type C:\LOL_VIRUS\files\art.txt
echo.
echo He in C:\LOL_VIRUS
pause
goto vir

:secrpwd
cls
type C:\LOL_VIRUS\files\art.txt
echo FIND THE KEY IN THE VIRUS FILES
echo n - Go out

echo.
Set /p choice="KEY: "
if not defined choice goto secrpwd
if "%choice%"=="14qw5t09" (goto rr)
if "%choice%"=="n" (goto vir)
cls
goto secrpwd

:rr
type C:\LOL_VIRUS\files\art.txt
start C:\LOL_VIRUS\files\NGGYU.url
cls
goto vir

:?
cls
type C:\LOL_VIRUS\files\art.txt
echo Read Readme.md in my repository. It's written there.
pause
goto pwd

:Adm
type C:\LOL_VIRUS\files\art.txt
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)





