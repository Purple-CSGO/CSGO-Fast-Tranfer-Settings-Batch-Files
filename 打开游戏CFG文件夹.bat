@echo off
chcp 936
title 打开游戏CFG文件夹 - Purp1e
cls
::Created By Purp1e  |  https://space.bilibili.com/73115492
::此处两行代码感谢CSGO工具箱制作者~
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
echo 请确保steam或国服CSGO启动器正在运行中！
echo ============================================================
pause
goto start

:end
start "" ""%p%""

