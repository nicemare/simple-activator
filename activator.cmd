@echo off
title ACTIVATOR CMD by @ariphx
color a

:menu
cls
echo ============================================
echo         ACTIVATOR CMD by @ariphx
echo ============================================
echo Pilih kategori:
echo.
echo [1] Microsoft
echo [2] Windows
echo [0] Keluar
echo.
set /p choice=Masukkan pilihan Anda [0-2]: 

if "%choice%"=="1" goto microsoft_menu
if "%choice%"=="2" goto windows_menu
if "%choice%"=="0" goto exit
goto invalid

:microsoft_menu
cls
echo ============================================
echo         Microsoft Activation Menu
echo ============================================
echo Pilih program Microsoft yang ingin diaktivasi:
echo.
echo [1] MICROSOFT 365
echo [2] MICROSOFT OFFICE 2010
echo [3] MICROSOFT OFFICE 2013
echo [4] MICROSOFT OFFICE 2016
echo [5] MICROSOFT OFFICE 2019
echo [6] MICROSOFT OFFICE 2021
echo [7] MICROSOFT OFFICE (2016, 2019, atau 2021)
echo [0] Kembali ke menu utama
echo.
set /p choice=Masukkan pilihan Anda [0-7]: 

if "%choice%"=="1" goto ao365
if "%choice%"=="2" goto o10
if "%choice%"=="3" goto o13
if "%choice%"=="4" goto o16
if "%choice%"=="5" goto ao2019
if "%choice%"=="6" goto ao2021
if "%choice%"=="7" goto aso
if "%choice%"=="0" goto menu
goto invalid

:windows_menu
cls
echo ============================================
echo          Windows Activation Menu
echo ============================================
echo Pilih versi Windows yang ingin diaktivasi:
echo.
echo [1] WINDOWS 11
echo [2] WINDOWS 10 V2
echo [3] WINDOWS 10
echo [4] WINDOWS 8
echo [5] WINDOWS 7
echo [0] Kembali ke menu utama
echo.
set /p choice=Masukkan pilihan Anda [0-5]: 

if "%choice%"=="1" goto aw11
if "%choice%"=="2" goto w10v2
if "%choice%"=="3" goto aw10
if "%choice%"=="4" goto w8
if "%choice%"=="5" goto w7
if "%choice%"=="0" goto menu
goto invalid

:ao2019
call :msgbox "Please wait!"
curl -L keyms.id/ao2019 -o ao2019.cmd && ao2019.cmd
call :msgbox "Terima kasih telah menggunakan ACTIVATOR CMD by @ariphx."
goto microsoft_menu

:ao365
call :msgbox "Please wait!"
curl -L keyms.id/ao365 -o ao365.cmd && ao365.cmd
call :msgbox "Terima kasih telah menggunakan ACTIVATOR CMD by @ariphx."
goto microsoft_menu

:ao2021
call :msgbox "Please wait!"
curl -L keyms.id/ao2021 -o ao2021.cmd && ao2021.cmd
call :msgbox "Terima kasih telah menggunakan ACTIVATOR CMD by @ariphx."
goto microsoft_menu

:aso
call :msgbox "Please wait!"
curl -L keyms.id/aso -o aso.cmd && aso.cmd
call :msgbox "Terima kasih telah menggunakan ACTIVATOR CMD by @ariphx."
goto microsoft_menu

:o10
call :msgbox "Please wait!"
curl -L https://raw.githubusercontent.com/ariphx/activator-repo/refs/heads/main/o10.bat -o o10.bat && o10.bat
call :msgbox "Terima kasih telah menggunakan ACTIVATOR CMD by @ariphx."
goto microsoft_menu

:o13
call :msgbox "Please wait!"
curl -L https://raw.githubusercontent.com/ariphx/activator-repo/refs/heads/main/o13.bat -o o13.bat && o13.bat
call :msgbox "Terima kasih telah menggunakan ACTIVATOR CMD by @ariphx."
goto microsoft_menu

:o16
call :msgbox "Please wait!"
curl -L https://raw.githubusercontent.com/ariphx/activator-repo/refs/heads/main/o16.bat -o o16.bat && o16.bat
call :msgbox "Terima kasih telah menggunakan ACTIVATOR CMD by @ariphx."
goto microsoft_menu

:aw10
call :msgbox "Please wait!"
curl -L keyms.id/aw10 -o aw10.cmd && aw10.cmd
call :msgbox "Terima kasih telah menggunakan ACTIVATOR CMD by @ariphx."
goto windows_menu

:aw11
call :msgbox "Please wait!"
curl -L keyms.id/aw11 -o aw11.cmd && aw11.cmd
call :msgbox "Terima kasih telah menggunakan ACTIVATOR CMD by @ariphx."
goto windows_menu

:w10v2
call :msgbox "Please wait!"
curl -L https://raw.githubusercontent.com/ariphx/activator-repo/refs/heads/main/w10.bat -o w10.bat && w10.bat
call :msgbox "Terima kasih telah menggunakan ACTIVATOR CMD by @ariphx."
goto windows_menu

:w7
call :msgbox "Please wait!"
curl -L https://raw.githubusercontent.com/ariphx/activator-repo/refs/heads/main/w7.bat -o w7.bat && w7.bat
call :msgbox "Terima kasih telah menggunakan ACTIVATOR CMD by @ariphx."
goto windows_menu

:w8
call :msgbox "Please wait!"
curl -L https://raw.githubusercontent.com/ariphx/activator-repo/refs/heads/main/w8.bat -o w8.bat && w8.bat
call :msgbox "Terima kasih telah menggunakan ACTIVATOR CMD by @ariphx."
goto windows_menu

:invalid
echo Pilihan tidak valid. Silakan coba lagi.
pause
goto menu

:exit
echo Terima kasih telah menggunakan ACTIVATOR CMD by @ariphx.
pause
exit

:msgbox
setlocal
echo Set WshShell = CreateObject("WScript.Shell") > msgbox.vbs
echo WshShell.Popup "%~1", 5, "Aktivasi", 64 >> msgbox.vbs
cscript //nologo msgbox.vbs
del msgbox.vbs
endlocal
goto :eof
