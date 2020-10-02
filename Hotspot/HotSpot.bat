@echo off
:: Below Statement restarts cmd in admin mode, comment it if using a shortcut to access this program
::if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
title WLAN Hotspot
echo Hotspot Menu
:choice
echo Press "1" to turn on hotspot
echo Press "2" to turn off hotspot
set /p n= Enter your choice:
if %n% ==1 (echo Turning on Hotspot)&(netsh wlan start hostednetwork) else if %n%==2 (echo Turning off Hotspot)&(netsh wlan stop hostednetwork) else (echo Invalid Input! Enter Again)&(goto choice)
pause


