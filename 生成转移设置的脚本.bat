@echo off
chcp 936
title ����ת�����õĽű� - Purp1e
cls
::Created By Purp1e  |  https://space.bilibili.com/73115492
::�˴����д����лCSGO������������~
echo wscript.echo CreateObject("WScript.Shell").RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 730\InstallLocation") >%temp%\csgopath~.vbs
for /f "delims=" %%a in ('cscript //nologo %temp%\csgopath~.vbs') do set "p=%%a"

if not exist "%p%" goto start
set p="%p:steamapps\common\Counter-Strike Global Offensive=userdata%"

goto end

:start
for /f "delims=" %%a in ('wmic process where "name='steam.exe'" get executablepath^ /value^|find "="') do set "%%a"
set p="%executablepath:steam.exe=userdata%"
if exist %p%  goto end

for /f "delims=" %%a in ('wmic process where "name='csgolauncher.exe'" get executablepath^ /value^|find "="') do set "%%a"
set p="%executablepath:csgolauncher.exe=userdata%"
if exist %p%  goto end

cls
echo ============================================================
echo ��ȷ��steam�����CSGO���������������У�
echo ============================================================
pause
goto start

:end
start "" ""%p%""

:loop
cls
echo ============================================================
echo ��Ϊ����Userdata�ļ��У�Ϊ���ɽű���ȷ��Steam������ID(һ��9λ)
echo 1:Userdata�½�һ���ļ���(���Ƽ�id)����֪SteamID
echo 2:Userdata���ж���ļ��У���֪��SteamID

set /p c=����ѡ��
if /i '%c%'=='1' goto known
if /i '%c%'=='2' goto unknown
goto loop

:unknown
start https://steamid.io/
echo ============================================================
echo ��Ϊ���򿪲���steamID����վ
echo ============================================================
echo ���steam��������(������Ҫ������)

echo ���ƶ��������ӷ�����վ���ı����У����lookup��ť

echo ���� https://steamcommunity.com/profiles/76561198107125441/
echo ��һ��   steamID  STEAM_0:1:73429856
echo �ڶ���  steamID3  [U:1:146859713]
echo                              ��  �����·�(9λID)
echo ============================================================

:known
set /p id=����������ID:
if exist %p%\%id%\730\local\cfg goto create
echo ��������ID�Ƿ���ȷ &&goto known
echo ============================================================

:create
set /p name=��������˻�����(ֻ��������):

echo ============================================================
echo ������ο�(�ɸ���):-high -novid -nojoy -d3d9ex +exec auto.cfg
set /p launch=����������������:

>"%p%\%id%--%name%.txt" echo %id%-^>%name%

>��CFG�ļ���(%name%).bat echo @echo off
>>��CFG�ļ���(%name%).bat echo chcp 936
>>��CFG�ļ���(%name%).bat echo title ��CFG�ļ��� - %name%
>>��CFG�ļ���(%name%).bat echo cls
>>��CFG�ļ���(%name%).bat echo echo wscript.echo CreateObject("WScript.Shell").RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 730\InstallLocation") >%%temp%%\csgopath~.vbs
>>��CFG�ļ���(%name%).bat echo for /f "delims=" %%%%a in ('cscript //nologo %%temp%%\csgopath~.vbs') do set "p=%%%%a"
>>��CFG�ļ���(%name%).bat echo if not exist "%%p%%" goto start
>>��CFG�ļ���(%name%).bat echo set p="%%p:steamapps\common\Counter-Strike Global Offensive=userdata%%\%id%\730\local\cfg"
>>��CFG�ļ���(%name%).bat echo goto end
>>��CFG�ļ���(%name%).bat echo :start
>>��CFG�ļ���(%name%).bat echo for /f "delims=" %%%%a in ('wmic process where "name='steam.exe'" get executablepath^ /value^|find "="') do set "%%%%a"
>>��CFG�ļ���(%name%).bat echo set p="%%executablepath:steam.exe=userdata%%\%id%\730\local\cfg"
>>��CFG�ļ���(%name%).bat echo if exist %%p%%  goto end
>>��CFG�ļ���(%name%).bat echo for /f "delims=" %%%%a in ('wmic process where "name='csgolauncher.exe'" get executablepath^ /value^|find "="') do set "%%%%a"
>>��CFG�ļ���(%name%).bat echo set p="%%executablepath:csgolauncher.exe=userdata%%\%id%\730\local\cfg"
>>��CFG�ļ���(%name%).bat echo if exist %%p%%  goto end
>>��CFG�ļ���(%name%).bat echo cls
>>��CFG�ļ���(%name%).bat echo echo ============================================================
>>��CFG�ļ���(%name%).bat echo echo ��ȷ��steam�����CSGO���������������У�
>>��CFG�ļ���(%name%).bat echo echo ============================================================

>>��CFG�ļ���(%name%).bat echo pause
>>��CFG�ļ���(%name%).bat echo goto start
>>��CFG�ļ���(%name%).bat echo :end
>>��CFG�ļ���(%name%).bat echo start "" ""%%p%%""

>����ת������(%name%).bat echo @echo off
>>����ת������(%name%).bat echo chcp 936
>>����ת������(%name%).bat echo title ����ת������ - %name%
>>����ת������(%name%).bat echo cls
>>����ת������(%name%).bat echo echo wscript.echo CreateObject("WScript.Shell").RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 730\InstallLocation") >%%temp%%\csgopath~.vbs
>>����ת������(%name%).bat echo for /f "delims=" %%%%a in ('cscript //nologo %%temp%%\csgopath~.vbs') do set "p=%%%%a"
>>����ת������(%name%).bat echo if not exist %%p%% goto start
>>����ת������(%name%).bat echo set p="%%p:steamapps\common\Counter-Strike Global Offensive=userdata%%\%id%\730\local\cfg"
>>����ת������(%name%).bat echo goto end
>>����ת������(%name%).bat echo :start
>>����ת������(%name%).bat echo for /f "delims=" %%%%a in ('wmic process where "name='steam.exe'" get executablepath^ /value^|find "="') do set "%%%%a"
>>����ת������(%name%).bat echo set p="%%executablepath:steam.exe=userdata%%\%id%\730\local\cfg"
>>����ת������(%name%).bat echo if exist %%p%%  goto end
>>����ת������(%name%).bat echo for /f "delims=" %%%%a in ('wmic process where "name='csgolauncher.exe'" get executablepath^ /value^|find "="') do set "%%%%a"
>>����ת������(%name%).bat echo set p="%%executablepath:csgolauncher.exe=userdata%%\%id%\730\local\cfg"
>>����ת������(%name%).bat echo if exist %%p%%  goto end
>>����ת������(%name%).bat echo cls
>>����ת������(%name%).bat echo echo ============================================================
>>����ת������(%name%).bat echo echo ��ȷ��steam�����CSGO���������������У�
>>����ת������(%name%).bat echo echo ============================================================

>>����ת������(%name%).bat echo pause
>>����ת������(%name%).bat echo goto start
>>����ת������(%name%).bat echo :end
>>����ת������(%name%).bat echo set date=%%date:/=-%%
>>����ת������(%name%).bat echo set backup=%%p:cfg=����%%%%date: =-%%
>>����ת������(%name%).bat echo md %%backup%%
>>����ת������(%name%).bat echo copy %%p%%\config.cfg %%backup%%
>>����ת������(%name%).bat echo copy %%p%%\video.txt %%backup%%
>>����ת������(%name%).bat echo md %%p%%
>>����ת������(%name%).bat echo copy *.cfg %%p%%
>>����ת������(%name%).bat echo copy *.txt %%p%%
>>����ת������(%name%).bat echo start "" "%%p%%"
>>����ת������(%name%).bat echo echo %launch%^|clip
>>����ת������(%name%).bat echo echo ============================================================
>>����ת������(%name%).bat echo echo %launch%
>>����ת������(%name%).bat echo echo ���������Ѿ����Ƶ�ճ����
>>����ת������(%name%).bat echo echo ��ǰ������������...
>>����ת������(%name%).bat echo echo ============================================================
>>����ת������(%name%).bat echo pause

cls
echo ============================================================
echo Userdata����ʾ�ļ�������
echo "��CFG�ļ���(%name%).bat"������
echo "����ת������(%name%).bat" ������
echo ============================================================

pause