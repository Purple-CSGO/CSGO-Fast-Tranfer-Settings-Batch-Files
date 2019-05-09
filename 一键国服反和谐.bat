@echo off
chcp 936
title 一键国服反和谐 - Purp1e
cls
::Created By Purp1e  |  https://space.bilibili.com/73115492
::此处两行代码感谢CSGO工具箱制作者~
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
echo 请确保steam或国服CSGO启动器正在运行中！
echo ============================================================
pause
goto start

:end
if not exist "%p%\pakxv_perfectworld_dir.vpk" echo 请勿反复执行~
ren "%p%\pakxv_audiochinese_000.vpk"  pakxv_audiochinese_000.backup
ren "%p%\pakxv_audiochinese_001.vpk"  pakxv_audiochinese_001.backup
ren "%p%\pakxv_audiochinese_002.vpk"  pakxv_audiochinese_002.backup
ren "%p%\pakxv_audiochinese_003.vpk"  pakxv_audiochinese_003.backup
ren "%p%\pakxv_audiochinese_004.vpk"  pakxv_audiochinese_004.backup
ren "%p%\pakxv_audiochinese_dir.vpk"   pakxv_audiochinese_dir.backup
ren "%p%\pakxv_lowviolence_000.vpk"   pakxv_lowviolence_000.backup
ren "%p%\pakxv_lowviolence_dir.vpk"     pakxv_lowviolence_dir.backup
ren "%p%\pakxv_perfectworld_000.vpk"  pakxv_perfectworld_000.backup
ren "%p%\pakxv_perfectworld_001.vpk"  pakxv_perfectworld_001.backup
ren "%p%\pakxv_perfectworld_dir.vpk"    pakxv_perfectworld_dir.backup

echo ===========================
echo 反和谐成功！所有相关文件后缀改为.backup
echo ===========================
goto done

:error
echo ===========================
echo 反和谐失败！
echo ===========================
:done

pause


