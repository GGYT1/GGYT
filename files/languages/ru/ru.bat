@echo off
call :Adm
title Введите пароль...
chcp 866
color a
cls
goto pwd

:pwd
cls
type C:\LOL_VIRUS\files\art.txt
echo Пожалуйста введите пароль (? если тебе нужна помощь)

echo.
Set /p choice="Пароль: "
if not defined choice goto pwd
if "%choice%"=="ggytprgs" (goto vir)
if "%choice%"=="?" (goto ?)
cls
goto pwd

:vir
title LOL_VIRUS By GGYT Progs and help from DiopinYT
cls
type C:\LOL_VIRUS\files\art.txt
echo Выберите действие:
echo.
echo 1 - Начать взрыв компа
echo 2 - Выйти
echo 3 - НЕ ВЫБИРАТЬ
echo 4 - Удалить вирус из автозагрузки
echo 5 - Центр обновлений(не скоро)
echo 6 - Где находится вирус?
echo 7 - ???

echo.
Set /p choice="Ваш выбор: "
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
echo Вы точно хотите выйти? (y/n)
Set /p choice="Выбор: "
if not defined choice goto exit
if "%choice%"=="n" (goto vir)
if "%choice%"=="y" (exit)
cls
goto exit

:q
cls
type C:\LOL_VIRUS\files\art.txt
echo Вы уверены, что хотите это сделать? (y/n)

echo.
Set /p choice="ВыБоР: "
if not defined choice goto q
if "%choice%"=="y" (goto q2)
if "%choice%"=="n" (goto vir)
cls
goto q

:q2
cls
type C:\LOL_VIRUS\files\art.txt
echo ПОСЛЕДНЕЕ ПРЕДУПРЕЖДЕНИЕ!!! 
echo Это приложение будет включаться при КАЖДОМ ВКЛЮЧЕНИИ ПК/НОУТБУКА!!! Вы уверены в своих действиях? (y/n)
echo ПОДУМАЙ!!!

echo.
Set /p choice="ВЫБОР: "
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
echo Вирус из автозагрузки удалён
pause
goto vir

:path
cls
type C:\LOL_VIRUS\files\art.txt
echo.
echo Он в C:\LOL_VIRUS
pause
goto vir

:secrpwd
cls
type C:\LOL_VIRUS\files\art.txt
echo НАЙДИ КЛЮЧ В ФАЙЛАХ ВИРУСА
echo n - Выйти

echo.
Set /p choice="Ключ: "
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
echo Читай внимательней в моем репозитории. Он там написан.
pause
goto pwd

:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)





