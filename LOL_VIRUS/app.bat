@echo off
call :Adm
chcp 866
color a
title Choose language
cls
goto lang

:lang
cls
echo Choose language:
echo.
echo 1 - Русский
echo 2 - English
echo 4 - Polski
echo 5 - Китайский
echo Over time there will be more and more languages.

echo.
Set /p choice="Your choice: "
if not defined choice goto lang
if "%choice%"=="1" (goto ru)
if "%choice%"=="2" (goto en)
if "%choice%"=="3" (goto ukr)
if "%choice%"=="4" (goto pol)
if "%choice%"=="5" (goto ch)
cls
goto lang

:ru
cls
cd C:\LOL_VIRUS\files\languages\ru
start ru.bat
exit


:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)
