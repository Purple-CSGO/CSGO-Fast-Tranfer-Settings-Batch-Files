@echo off
chcp 936
title ��������г��ԭ - Purp1e
cls
::Created By Purp1e  |  https://space.bilibili.com/73115492
::�˴����д����лCSGO������������~
echo wscript.echo CreateObject("WScript.Shell").RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 730\InstallLocation") >%temp%\csgopath~.vbs
for /f "delims=" %%a in ('cscript //nologo %temp%\csgopath~.vbs') do set "p=%%a"

if not exist "%p%" goto start
set p=%p%\csgo

goto end

:start
for /f "delims=" %%a in ('wmic process where "name='steam.exe'" get executablepath^ /value^|find "="') do set "%%a"
set p="%executablepath:steam.exe=steamapps\common\Counter-Strike Global Offensive\csgo%"
if exist %p%  goto end

for /f "delims=" %%a in ('wmic process where "name='csgolauncher.exe'" get executablepath^ /value^|find "="') do set "%%a"
set p="%executablepath:csgolauncher.exe=steamapps\common\Counter-Strike Global Offensive\csgo%"
if exist %p%  goto end

cls
echo ============================================================
echo ��ȷ��steam�����CSGO���������������У�
echo ============================================================
pause
goto start

:end
if not exist "%p%\pakxv_perfectworld_dir.backup" echo ���𷴸�ִ��~
ren "%p%\pakxv_audiochinese_000.backup"  pakxv_audiochinese_000.vpk
ren "%p%\pakxv_audiochinese_001.backup"  pakxv_audiochinese_001.vpk
ren "%p%\pakxv_audiochinese_002.backup"  pakxv_audiochinese_002.vpk
ren "%p%\pakxv_audiochinese_003.backup"  pakxv_audiochinese_003.vpk
ren "%p%\pakxv_audiochinese_004.backup"  pakxv_audiochinese_004.vpk
ren "%p%\pakxv_audiochinese_dir.backup"   pakxv_audiochinese_dir.vpk
ren "%p%\pakxv_lowviolence_000.backup"   pakxv_lowviolence_000.vpk
ren "%p%\pakxv_lowviolence_dir.backup"     pakxv_lowviolence_dir.vpk
ren "%p%\pakxv_perfectworld_000.backup"  pakxv_perfectworld_000.vpk
ren "%p%\pakxv_perfectworld_001.backup"  pakxv_perfectworld_001.vpk
ren "%p%\pakxv_perfectworld_dir.backup"    pakxv_perfectworld_dir.vpk

echo ===================================
echo ��ԭ�ɹ�����������ļ���׺��Ϊ.vpk
echo ===================================
goto done

:error
echo ===================================
echo ��ԭʧ�ܣ�
echo ===================================
:done

pause


