@echo off
chcp 936
title ����ϷCFG�ļ��� - Purp1e
cls
::Created By Purp1e  |  https://space.bilibili.com/73115492
::�˴����д����лCSGO������������~
echo wscript.echo CreateObject("WScript.Shell").RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 730\InstallLocation") >%temp%\csgopath~.vbs
for /f "delims=" %%a in ('cscript //nologo %temp%\csgopath~.vbs') do set "p=%%a"

if not exist "%p%\csgo.exe" goto start
set p="%p%\csgo\cfg"
goto end

:start
for /f "delims=" %%a in ('wmic process where "name='steam.exe'" get executablepath^ /value^|find "="') do set "%%a"
set p="%executablepath:steam.exe=steamapps\common\Counter-Strike Global Offensive\csgo\cfg%"
if exist %p%  goto end

for /f "delims=" %%a in ('wmic process where "name='csgolauncher.exe'" get executablepath^ /value^|find "="') do set "%%a"
set p="%executablepath:csgolauncher.exe=steamapps\common\Counter-Strike Global Offensive\csgo\cfg%"
if exist %p%  goto end

cls
echo ============================================================
echo ��ȷ��steam�����CSGO���������������У�
echo ============================================================
pause
goto start

:end
start "" ""%p%""

