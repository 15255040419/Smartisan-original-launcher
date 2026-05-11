@echo off
chcp 65001 >nul
setlocal

set "JAVA_HOME=D:\Program Files\Android\Android Studio\jbr"
set "PATH=%JAVA_HOME%\bin;%PATH%"
set "ROOT=%~dp0"
set "APKTOOL=%ROOT%tools\apktool.jar"
set "KEYSTORE=%ROOT%tools\signing\release.keystore"
set "OUT_DIR=%ROOT%build"
set "ZIPALIGN=%LOCALAPPDATA%\Android\Sdk\build-tools\35.0.0\zipalign.exe"
set "MANIFEST_BIN=%ROOT%launcher\original\AndroidManifest.xml"

if not exist "%OUT_DIR%" mkdir "%OUT_DIR%"

echo [1/2] Building original-port launcher...
if exist "%ROOT%launcher\build" rmdir /s /q "%ROOT%launcher\build"
java -jar "%APKTOOL%" b "%ROOT%launcher" -o "%OUT_DIR%\launcher-unsigned.apk"
if errorlevel 1 (
  echo FAIL: apktool build failed.
  exit /b 1
)
if exist "%MANIFEST_BIN%" (
  pushd "%ROOT%launcher\original"
  jar uf "%OUT_DIR%\launcher-unsigned.apk" AndroidManifest.xml
  popd
) else (
  echo FAIL: binary AndroidManifest.xml not found.
  exit /b 1
)

echo [2/2] Signing APK...
copy /y "%OUT_DIR%\launcher-unsigned.apk" "%OUT_DIR%\launcher-presigned.apk" >nul
jarsigner -keystore "%KEYSTORE%" -storepass android -keypass android "%OUT_DIR%\launcher-presigned.apk" smartisan
if errorlevel 1 (
  echo FAIL: jarsigner failed.
  exit /b 1
)

if exist "%ZIPALIGN%" (
  "%ZIPALIGN%" -p -f 4 "%OUT_DIR%\launcher-presigned.apk" "%OUT_DIR%\launcher-signed.apk"
) else (
  echo WARN: zipalign not found, using unaligned APK.
  copy /y "%OUT_DIR%\launcher-presigned.apk" "%OUT_DIR%\launcher-signed.apk" >nul
)

echo SUCCESS: %OUT_DIR%\launcher-signed.apk
