@echo off
chcp 936
title ����ת�����õĽű� - Purp1e
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
start "" "%executablepath:steam.exe=userdata%"
goto end

:perfectworld
start "" "%executablepath:csgolauncher.exe=userdata%"

:end


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
if exist %executablepath:steam.exe=userdata%\%id%\730\local\cfg goto create
echo ��������ID�Ƿ���ȷ &&goto known
echo ============================================================

:create
set /p name=��������˻�����(ֻ��������):

>%executablepath:~0,-10%\userdata\%id%--%name%.txt echo %id%-^>%name%
echo ============================================================
echo Userdata��ʾ�ļ�������

>��CFG�ļ���(%name%).bat echo @echo off
>>��CFG�ļ���(%name%).bat echo chcp 936
>>��CFG�ļ���(%name%).bat echo title ��CFG�ļ��� - %name%
>>��CFG�ļ���(%name%).bat echo cls
>>��CFG�ļ���(%name%).bat echo :start
>>��CFG�ļ���(%name%).bat echo for /f "delims=" %%%%a in ('wmic process where "name='steam.exe'" get executablepath^^ /value^^^|find "="') do set "%%%%a"
>>��CFG�ļ���(%name%).bat echo if exist %%executablepath%%  goto steam
>>��CFG�ļ���(%name%).bat echo for /f "delims=" %%%%a in ('wmic process where "name='csgolauncher.exe'" get executablepath^^ /value^^^|find "="') do set "%%%%a"
>>��CFG�ļ���(%name%).bat echo if exist %%executablepath%%  goto perfectworld
>>��CFG�ļ���(%name%).bat echo cls
>>��CFG�ļ���(%name%).bat echo echo ============================================================
>>��CFG�ļ���(%name%).bat echo echo ��ȷ��steam�����CSGO���������������У�
>>��CFG�ļ���(%name%).bat echo echo ============================================================

>>��CFG�ļ���(%name%).bat echo pause
>>��CFG�ļ���(%name%).bat echo goto start
>>��CFG�ļ���(%name%).bat echo :steam
>>��CFG�ļ���(%name%).bat echo start "" "%%executablepath:steam.exe=userdata%%\%id%\730\local\cfg"
>>��CFG�ļ���(%name%).bat echo goto end
>>��CFG�ļ���(%name%).bat echo :perfectworld
>>��CFG�ļ���(%name%).bat echo start "" "%%executablepath:csgolauncher.exe=userdata%%\%id%\730\local\cfg"
>>��CFG�ļ���(%name%).bat echo :end
echo "��CFG�ļ���(%name%).bat"������


>����ת������(%name%).bat echo @echo off
>>����ת������(%name%).bat echo chcp 936
>>����ת������(%name%).bat echo title ����ת������ - %name%
>>����ת������(%name%).bat echo cls
>>����ת������(%name%).bat echo :start
>>����ת������(%name%).bat echo for /f "delims=" %%%%a in ('wmic process where "name='steam.exe'" get executablepath^^ /value^^^|find "="') do set "%%%%a"
>>����ת������(%name%).bat echo if exist %%executablepath%%  goto steam
>>����ת������(%name%).bat echo for /f "delims=" %%%%a in ('wmic process where "name='csgolauncher.exe'" get executablepath^^ /value^^^|find "="') do set "%%%%a"
>>����ת������(%name%).bat echo if exist %%executablepath%%  goto perfectworld
>>����ת������(%name%).bat echo cls
>>����ת������(%name%).bat echo echo ============================================================
>>����ת������(%name%).bat echo echo ��ȷ��steam�����CSGO���������������У�
>>����ת������(%name%).bat echo echo ============================================================

>>����ת������(%name%).bat echo pause
>>����ת������(%name%).bat echo goto start
>>����ת������(%name%).bat echo :steam
>>����ת������(%name%).bat echo set date=%%date:/=-%%
>>����ת������(%name%).bat echo set path=%%executablepath:steam.exe=userdata%%\%id%\730\local\cfg
>>����ת������(%name%).bat echo set backup=%%executablepath:steam.exe=userdata%%\%id%\730\local\����%%date: =-%%
>>����ת������(%name%).bat echo goto end
>>����ת������(%name%).bat echo :perfectworld
>>����ת������(%name%).bat echo set date=%%date:/=-%%
>>����ת������(%name%).bat echo set path=%%executablepath:csgolauncher.exe=userdata%%\%id%\730\local\cfg
>>����ת������(%name%).bat echo set backup=%%executablepath:csgolauncher.exe=userdata%%\%id%\730\local\����%%date: =-%%
>>����ת������(%name%).bat echo :end
>>����ת������(%name%).bat echo md %%backup%%
>>����ת������(%name%).bat echo copy %%path%%\config.cfg %%backup%%
>>����ת������(%name%).bat echo copy %%path%%\video.txt %%backup%%
>>����ת������(%name%).bat echo md %%path%%
>>����ת������(%name%).bat echo copy *.cfg %%path%%
>>����ת������(%name%).bat echo copy *.txt %%path%%
>>����ת������(%name%).bat echo start "" "%%path%%"

::BUG ���е�clipʱ���ˡ�δ�����
::echo ������ο�(�ɸ���):-novid -high -processheap -nojoy -noforcemspd +exec auto.cfg
::set /p launch=����������������:
::>>����ת������(%name%).bat echo echo %launch%|clip
::>>����ת������(%name%).bat echo echo ============================================================
::>>����ת������(%name%).bat echo echo %launch%
::>>����ת������(%name%).bat echo echo ���������Ѹ��Ƶ�ճ����
::>>����ת������(%name%).bat echo echo ��ǰ��steam����������...
::>>����ת������(%name%).bat echo echo ============================================================

>>����ת������(%name%).bat echo pause
echo "����ת������(%name%).bat" ������
echo ============================================================

pause