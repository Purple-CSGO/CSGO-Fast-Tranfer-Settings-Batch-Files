@echo off
chcp 936
title ����ϷCFG�ļ��� - Purp1e
cls
::Created By Purp1e  |  https://space.bilibili.com/73115492

::start "" "steam://run"

:start

for /f "delims=" %%a in ('wmic process where "name='steam.exe'" get executablepath^ /value^|find "="') do set "%%a"
if exist %executablepath%  goto steam

for /f "delims=" %%a in ('wmic process where "name='csgolauncher.exe'" get executablepath^ /value^|find "="') do set "%%a"
if exist %executablepath%  goto perfectworld

cls
echo ============================================================
echo ��ȷ��steam�����CSGO���������������У�
echo ============================================================
pause

goto start

:steam
start "" "%executablepath:steam.exe=steamapps\common\Counter-Strike Global Offensive\csgo\cfg%"
goto end

:perfectworld
start "" "%executablepath:csgolauncher.exe=steamapps\common\Counter-Strike Global Offensive\csgo\cfg%"

:end

