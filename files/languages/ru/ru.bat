@echo off
call :Adm
title ������ ��஫�...
chcp 866
color a
cls
goto pwd

:pwd
cls
type C:\LOL_VIRUS\files\art.txt
echo �������� ������ ��஫� (? �᫨ ⥡� �㦭� ������)

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
echo �롥�� ����⢨�:
echo.
echo 1 - ����� ���� �����
echo 2 - ���
echo 3 - �� ��������
echo 4 - ������� ����� �� ��⮧���㧪�
echo 5 - ����� ����������(�� ᪮�)
echo 6 - ��� ��室���� �����?
echo 7 - ???

echo.
Set /p choice="��� �롮�: "
if not defined choice goto vir
if "%choice%"=="1" (goto q)
if "%choice%"=="2" (goto exit)
if "%choice%"=="3" (start C:\LOL_VIRUS\files\languages\ru\NOT_OPEN_ME_PLEASE.html)
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
echo �� �筮 ��� ���? (y/n)
Set /p choice="�롮�: "
if not defined choice goto exit
if "%choice%"=="n" (goto vir)
if "%choice%"=="y" (exit)
cls
goto exit

:q
cls
type C:\LOL_VIRUS\files\art.txt
echo �� 㢥७�, �� ��� �� ᤥ����? (y/n)

echo.
Set /p choice="�끮�: "
if not defined choice goto q
if "%choice%"=="y" (goto q2)
if "%choice%"=="n" (goto vir)
cls
goto q

:q2
cls
type C:\LOL_VIRUS\files\art.txt
echo ��������� ��������������!!! 
echo �� �ਫ������ �㤥� ��������� �� ������ ��������� ��/��������!!! �� 㢥७� � ᢮�� ����⢨��? (y/n)
echo �������!!!

echo.
Set /p choice="�����: "
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
echo ����� �� ��⮧���㧪� 㤠��
pause
goto vir

:path
cls
type C:\LOL_VIRUS\files\art.txt
echo.
echo �� � C:\LOL_VIRUS
pause
goto vir

:secrpwd
cls
type C:\LOL_VIRUS\files\art.txt
echo ����� ���� � ������ ������
echo n - ���

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
cls
type C:\LOL_VIRUS\files\art.txt
echo ��⠩ �����⥫쭥� � ���� ९����ਨ. �� ⠬ ����ᠭ.
pause
goto pwd

:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)





