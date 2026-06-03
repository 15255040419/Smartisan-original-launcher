@echo off
chcp 65001 >nul
setlocal

if exist "D:\Program Files\Android\Android Studio\jbr\bin\java.exe" (
  set "JAVA_HOME=D:\Program Files\Android\Android Studio\jbr"
  set "PATH=%JAVA_HOME%\bin;%PATH%"
) else if exist "C:\Program Files\Android\Android Studio\jbr\bin\java.exe" (
  set "JAVA_HOME=C:\Program Files\Android\Android Studio\jbr"
  set "PATH=%JAVA_HOME%\bin;%PATH%"
) else if exist "%~dp0build\tools\jdk17\jdk-17.0.19+10\bin\java.exe" (
  set "JAVA_HOME=%~dp0build\tools\jdk17\jdk-17.0.19+10"
  set "PATH=%~dp0build\tools\jdk17\jdk-17.0.19+10\bin;%PATH%"
)
set "ROOT=%~dp0"
set "APKTOOL=%ROOT%tools\apktool.jar"
set "KEYSTORE=%ROOT%tools\signing\release.keystore"
set "OUT_DIR=%ROOT%build"
set "ANDROID_SDK=%ANDROID_HOME%"
if "%ANDROID_SDK%"=="" set "ANDROID_SDK=%ANDROID_SDK_ROOT%"
if "%ANDROID_SDK%"=="" if exist "%LOCALAPPDATA%\Android\Sdk" set "ANDROID_SDK=%LOCALAPPDATA%\Android\Sdk"
if "%ANDROID_SDK%"=="" if exist "D:\sdk" set "ANDROID_SDK=D:\sdk"

rem Dynamically detect the latest version of build-tools
set "BUILD_TOOLS="
if exist "%ANDROID_SDK%\build-tools" (
  for /f "delims=" %%d in ('dir /b /ad /o-n "%ANDROID_SDK%\build-tools"') do (
    if not defined BUILD_TOOLS (
      if exist "%ANDROID_SDK%\build-tools\%%d\aapt2.exe" (
        set "BUILD_TOOLS=%ANDROID_SDK%\build-tools\%%d"
      )
    )
  )
)
if "%BUILD_TOOLS%"=="" set "BUILD_TOOLS=%ANDROID_SDK%\build-tools\35.0.0"

set "ZIPALIGN=%BUILD_TOOLS%\zipalign.exe"
set "D8=%BUILD_TOOLS%\d8.bat"
set "AAPT2=%BUILD_TOOLS%\aapt2.exe"
set "APKSIGNER=%BUILD_TOOLS%\apksigner.bat"

rem Dynamically detect the latest version of android.jar
set "ANDROID_JAR="
if exist "%ANDROID_SDK%\platforms" (
  for /f "delims=" %%p in ('dir /b /ad /o-n "%ANDROID_SDK%\platforms"') do (
    if not defined ANDROID_JAR (
      if exist "%ANDROID_SDK%\platforms\%%p\android.jar" (
        set "ANDROID_JAR=%ANDROID_SDK%\platforms\%%p\android.jar"
      )
    )
  )
)
if "%ANDROID_JAR%"=="" set "ANDROID_JAR=%ANDROID_SDK%\platforms\android-35\android.jar"

if not exist "%AAPT2%" (
  echo [ERROR] aapt2.exe not found!
  echo Checked path: %BUILD_TOOLS%\aapt2.exe
  echo Please make sure Android SDK build-tools are installed.
  exit /b 1
)
if not exist "%ANDROID_JAR%" (
  echo [ERROR] android.jar not found!
  echo Checked path: %ANDROID_JAR%
  echo Please make sure Android SDK platform is installed.
  exit /b 1
)

set "MANIFEST_BIN=%ROOT%launcher\original\AndroidManifest.xml"

if not exist "%OUT_DIR%" mkdir "%OUT_DIR%"

if exist "%ROOT%launcher\tools\maintained_settings_res\res" (
  echo [extra] Building maintained settings resources...
  if exist "%ROOT%launcher\scratch\maintained_settings_res" rmdir /s /q "%ROOT%launcher\scratch\maintained_settings_res"
  mkdir "%ROOT%launcher\scratch\maintained_settings_res\flat"
  if not exist "%ROOT%launcher\assets\settings_maintained" mkdir "%ROOT%launcher\assets\settings_maintained"
  "%AAPT2%" compile --dir "%ROOT%launcher\tools\maintained_settings_res\res" -o "%ROOT%launcher\scratch\maintained_settings_res\flat\res.zip"
  if errorlevel 1 (
    echo FAIL: aapt2 compile maintained settings resources failed.
    exit /b 1
  )
  "%AAPT2%" link --manifest "%ROOT%launcher\tools\maintained_settings_res\AndroidManifest.xml" -I "%ANDROID_JAR%" --auto-add-overlay -o "%ROOT%launcher\scratch\maintained_settings_res\maintained-settings-res.apk" "%ROOT%launcher\scratch\maintained_settings_res\flat\res.zip"
  if errorlevel 1 (
    echo FAIL: aapt2 link maintained settings resources failed.
    exit /b 1
  )
  copy /y "%ROOT%launcher\scratch\maintained_settings_res\maintained-settings-res.apk" "%ROOT%launcher\assets\settings_maintained\maintained-settings-res.apk" >nul
)

echo [1/2] Building original-port launcher...
if exist "%ROOT%launcher\build" rmdir /s /q "%ROOT%launcher\build"
if exist "%ROOT%launcher\scratch\classes" rmdir /s /q "%ROOT%launcher\scratch\classes"
if exist "%ROOT%launcher\scratch\dex" rmdir /s /q "%ROOT%launcher\scratch\dex"
if exist "%ROOT%launcher\scratch\helpers.jar" del /f /q "%ROOT%launcher\scratch\helpers.jar"
if exist "%ROOT%launcher\scratch\java_sources.txt" del /f /q "%ROOT%launcher\scratch\java_sources.txt"
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

if exist "%ROOT%launcher\tools\java" (
  echo [extra] Compiling migrated settings host...
  if exist "%ROOT%launcher\scratch\classes" rmdir /s /q "%ROOT%launcher\scratch\classes"
  if exist "%ROOT%launcher\scratch\dex" rmdir /s /q "%ROOT%launcher\scratch\dex"
  mkdir "%ROOT%launcher\scratch\classes"
  mkdir "%ROOT%launcher\scratch\dex"
  dir /s /b "%ROOT%launcher\tools\java\*.java" > "%ROOT%launcher\scratch\java_sources.txt"
  javac -encoding UTF-8 -source 1.8 -target 1.8 -bootclasspath "%ANDROID_JAR%" -classpath "%ANDROID_JAR%;%OUT_DIR%\launcher-unsigned.apk" -d "%ROOT%launcher\scratch\classes" @"%ROOT%launcher\scratch\java_sources.txt"
  if errorlevel 1 (
    echo FAIL: javac migrated settings host failed.
    exit /b 1
  )
  pushd "%ROOT%launcher\scratch\classes"
  jar cf "%ROOT%launcher\scratch\helpers.jar" .
  popd
  call "%D8%" --min-api 23 --classpath "%ANDROID_JAR%" --output "%ROOT%launcher\scratch\dex" "%ROOT%launcher\scratch\helpers.jar"
  if errorlevel 1 (
    echo FAIL: d8 migrated settings host failed.
    exit /b 1
  )
  copy /y "%ROOT%launcher\scratch\dex\classes.dex" "%ROOT%launcher\scratch\dex\classes2.dex" >nul
  pushd "%ROOT%launcher\scratch\dex"
  jar uf "%OUT_DIR%\launcher-unsigned.apk" classes2.dex
  popd
)

echo [2/2] Signing APK...
if exist "%OUT_DIR%\launcher-presigned.apk" del /f /q "%OUT_DIR%\launcher-presigned.apk"
if exist "%OUT_DIR%\launcher-aligned.apk" del /f /q "%OUT_DIR%\launcher-aligned.apk"
if exist "%OUT_DIR%\launcher-signed.apk" del /f /q "%OUT_DIR%\launcher-signed.apk"
powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Sleep -Milliseconds 500"

if exist "%ZIPALIGN%" (
  "%ZIPALIGN%" -p -f 4 "%OUT_DIR%\launcher-unsigned.apk" "%OUT_DIR%\launcher-aligned.apk"
  if errorlevel 1 (
    echo FAIL: zipalign failed.
    exit /b 1
  )
) else (
  echo WARN: zipalign not found, using unaligned APK.
  copy /y "%OUT_DIR%\launcher-unsigned.apk" "%OUT_DIR%\launcher-aligned.apk" >nul
)

if exist "%APKSIGNER%" (
  call "%APKSIGNER%" sign ^
    --ks "%KEYSTORE%" ^
    --ks-key-alias smartisan ^
    --ks-pass pass:android ^
    --key-pass pass:android ^
    --v1-signing-enabled true ^
    --v2-signing-enabled true ^
    --v3-signing-enabled true ^
    --out "%OUT_DIR%\launcher-signed.apk" ^
    "%OUT_DIR%\launcher-aligned.apk"
  if errorlevel 1 (
    echo FAIL: apksigner failed.
    exit /b 1
  )
) else (
  echo WARN: apksigner not found, falling back to jarsigner-only APK.
  copy /y "%OUT_DIR%\launcher-aligned.apk" "%OUT_DIR%\launcher-presigned.apk" >nul
  jarsigner -keystore "%KEYSTORE%" -storepass android -keypass android "%OUT_DIR%\launcher-presigned.apk" smartisan
  if errorlevel 1 (
    echo FAIL: jarsigner failed.
    exit /b 1
  )
  copy /y "%OUT_DIR%\launcher-presigned.apk" "%OUT_DIR%\launcher-signed.apk" >nul
)

echo SUCCESS: %OUT_DIR%\launcher-signed.apk
