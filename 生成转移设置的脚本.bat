@echo off
chcp 936
title 生成转移设置的脚本 - Purp1e
cls
::Created By Purp1e  |  https://space.bilibili.com/73115492
::此处两行代码感谢CSGO工具箱制作者~
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
echo 请确保steam或国服CSGO启动器正在运行中！
echo ============================================================
pause
goto start

:end
start "" ""%p%""

:loop
cls
echo ============================================================
echo 已为您打开Userdata文件夹，为生成脚本需确定Steam的数字ID(一般9位)
echo 1:Userdata下仅一个文件夹(名称即id)或已知SteamID
echo 2:Userdata下有多个文件夹，不知道SteamID

set /p c=您的选择：
if /i '%c%'=='1' goto known
if /i '%c%'=='2' goto unknown
goto loop

:unknown
start https://steamid.io/
echo ============================================================
echo 已为您打开查找steamID的网站
echo ============================================================
echo 请打开steam个人资料(可能需要加速器)

echo 复制顶部的链接放入网站的文本框中，点击lookup按钮

echo 例如 https://steamcommunity.com/profiles/76561198107125441/
echo 第一行   steamID  STEAM_0:1:73429856
echo 第二行  steamID3  [U:1:146859713]
echo                              ┗  填入下方(9位ID)
echo ============================================================

:known
set /p id=请输入您的ID:
if exist %p%\%id%\730\local\cfg goto create
echo 错误！请检查ID是否正确 &&goto known
echo ============================================================

:create
set /p name=请输入该账户名称(只用于区分):

echo ============================================================
echo 启动项参考(可复制):-high -novid -nojoy -d3d9ex +exec auto.cfg
set /p launch=请输入您的启动项:

>"%p%\%id%--%name%.txt" echo %id%-^>%name%

>打开CFG文件夹(%name%).bat echo @echo off
>>打开CFG文件夹(%name%).bat echo chcp 936
>>打开CFG文件夹(%name%).bat echo title 打开CFG文件夹 - %name%
>>打开CFG文件夹(%name%).bat echo cls
>>打开CFG文件夹(%name%).bat echo echo wscript.echo CreateObject("WScript.Shell").RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 730\InstallLocation") >%%temp%%\csgopath~.vbs
>>打开CFG文件夹(%name%).bat echo for /f "delims=" %%%%a in ('cscript //nologo %%temp%%\csgopath~.vbs') do set "p=%%%%a"
>>打开CFG文件夹(%name%).bat echo if not exist "%%p%%" goto start
>>打开CFG文件夹(%name%).bat echo set p="%%p:steamapps\common\Counter-Strike Global Offensive=userdata%%\%id%\730\local\cfg"
>>打开CFG文件夹(%name%).bat echo goto end
>>打开CFG文件夹(%name%).bat echo :start
>>打开CFG文件夹(%name%).bat echo for /f "delims=" %%%%a in ('wmic process where "name='steam.exe'" get executablepath^ /value^|find "="') do set "%%%%a"
>>打开CFG文件夹(%name%).bat echo set p="%%executablepath:steam.exe=userdata%%\%id%\730\local\cfg"
>>打开CFG文件夹(%name%).bat echo if exist %%p%%  goto end
>>打开CFG文件夹(%name%).bat echo for /f "delims=" %%%%a in ('wmic process where "name='csgolauncher.exe'" get executablepath^ /value^|find "="') do set "%%%%a"
>>打开CFG文件夹(%name%).bat echo set p="%%executablepath:csgolauncher.exe=userdata%%\%id%\730\local\cfg"
>>打开CFG文件夹(%name%).bat echo if exist %%p%%  goto end
>>打开CFG文件夹(%name%).bat echo cls
>>打开CFG文件夹(%name%).bat echo echo ============================================================
>>打开CFG文件夹(%name%).bat echo echo 请确保steam或国服CSGO启动器正在运行中！
>>打开CFG文件夹(%name%).bat echo echo ============================================================

>>打开CFG文件夹(%name%).bat echo pause
>>打开CFG文件夹(%name%).bat echo goto start
>>打开CFG文件夹(%name%).bat echo :end
>>打开CFG文件夹(%name%).bat echo start "" ""%%p%%""

>快速转移设置(%name%).bat echo @echo off
>>快速转移设置(%name%).bat echo chcp 936
>>快速转移设置(%name%).bat echo title 快速转移设置 - %name%
>>快速转移设置(%name%).bat echo cls
>>快速转移设置(%name%).bat echo echo wscript.echo CreateObject("WScript.Shell").RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 730\InstallLocation") >%%temp%%\csgopath~.vbs
>>快速转移设置(%name%).bat echo for /f "delims=" %%%%a in ('cscript //nologo %%temp%%\csgopath~.vbs') do set "p=%%%%a"
>>快速转移设置(%name%).bat echo if not exist %%p%% goto start
>>快速转移设置(%name%).bat echo set p="%%p:steamapps\common\Counter-Strike Global Offensive=userdata%%\%id%\730\local\cfg"
>>快速转移设置(%name%).bat echo goto end
>>快速转移设置(%name%).bat echo :start
>>快速转移设置(%name%).bat echo for /f "delims=" %%%%a in ('wmic process where "name='steam.exe'" get executablepath^ /value^|find "="') do set "%%%%a"
>>快速转移设置(%name%).bat echo set p="%%executablepath:steam.exe=userdata%%\%id%\730\local\cfg"
>>快速转移设置(%name%).bat echo if exist %%p%%  goto end
>>快速转移设置(%name%).bat echo for /f "delims=" %%%%a in ('wmic process where "name='csgolauncher.exe'" get executablepath^ /value^|find "="') do set "%%%%a"
>>快速转移设置(%name%).bat echo set p="%%executablepath:csgolauncher.exe=userdata%%\%id%\730\local\cfg"
>>快速转移设置(%name%).bat echo if exist %%p%%  goto end
>>快速转移设置(%name%).bat echo cls
>>快速转移设置(%name%).bat echo echo ============================================================
>>快速转移设置(%name%).bat echo echo 请确保steam或国服CSGO启动器正在运行中！
>>快速转移设置(%name%).bat echo echo ============================================================

>>快速转移设置(%name%).bat echo pause
>>快速转移设置(%name%).bat echo goto start
>>快速转移设置(%name%).bat echo :end
>>快速转移设置(%name%).bat echo set date=%%date:/=-%%
>>快速转移设置(%name%).bat echo set backup=%%p:cfg=备份%%%%date: =-%%
>>快速转移设置(%name%).bat echo md %%backup%%
>>快速转移设置(%name%).bat echo copy %%p%%\config.cfg %%backup%%
>>快速转移设置(%name%).bat echo copy %%p%%\video.txt %%backup%%
>>快速转移设置(%name%).bat echo md %%p%%
>>快速转移设置(%name%).bat echo copy *.cfg %%p%%
>>快速转移设置(%name%).bat echo copy *.txt %%p%%
>>快速转移设置(%name%).bat echo start "" "%%p%%"
>>快速转移设置(%name%).bat echo echo %launch%^|clip
>>快速转移设置(%name%).bat echo echo ============================================================
>>快速转移设置(%name%).bat echo echo %launch%
>>快速转移设置(%name%).bat echo echo 该启动项已经复制到粘贴板
>>快速转移设置(%name%).bat echo echo 请前往设置启动项...
>>快速转移设置(%name%).bat echo echo ============================================================
>>快速转移设置(%name%).bat echo pause

cls
echo ============================================================
echo Userdata下提示文件已生成
echo "打开CFG文件夹(%name%).bat"已生成
echo "快速转移设置(%name%).bat" 已生成
echo ============================================================

pause