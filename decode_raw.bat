@echo off
chcp 65001 >nul
setlocal

set "JAVA_HOME=D:\Program Files\Android\Android Studio\jbr"
set "PATH=%JAVA_HOME%\bin;%PATH%"
set "ROOT=%~dp0"

java -jar "%ROOT%tools\apktool.jar" d -f -r "%ROOT%original_apks\com.smartisanos.launcher-3.apk" -o "%ROOT%launcher"
