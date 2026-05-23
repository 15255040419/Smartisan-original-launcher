@echo off
chcp 65001 >nul
setlocal

if exist "D:\Program Files\Android\Android Studio\jbr\bin\java.exe" (
  set "JAVA_HOME=D:\Program Files\Android\Android Studio\jbr"
  set "PATH=%JAVA_HOME%\bin;%PATH%"
)
set "ROOT=%~dp0"
set "APKTOOL=%ROOT%tools\apktool.jar"
set "KEYSTORE=%ROOT%tools\signing\release.keystore"
set "OUT_DIR=%ROOT%build"
set "ANDROID_SDK=%ANDROID_HOME%"
if "%ANDROID_SDK%"=="" set "ANDROID_SDK=%ANDROID_SDK_ROOT%"
if "%ANDROID_SDK%"=="" if exist "%LOCALAPPDATA%\Android\Sdk" set "ANDROID_SDK=%LOCALAPPDATA%\Android\Sdk"
if "%ANDROID_SDK%"=="" if exist "D:\sdk" set "ANDROID_SDK=D:\sdk"
set "BUILD_TOOLS=%ANDROID_SDK%\build-tools\35.0.0"
if not exist "%BUILD_TOOLS%\aapt2.exe" if exist "%ANDROID_SDK%\build-tools\34.0.0\aapt2.exe" set "BUILD_TOOLS=%ANDROID_SDK%\build-tools\34.0.0"
if not exist "%BUILD_TOOLS%\aapt2.exe" if exist "%ANDROID_SDK%\build-tools\36.1.0\aapt2.exe" set "BUILD_TOOLS=%ANDROID_SDK%\build-tools\36.1.0"
set "ZIPALIGN=%BUILD_TOOLS%\zipalign.exe"
set "D8=%BUILD_TOOLS%\d8.bat"
set "AAPT2=%BUILD_TOOLS%\aapt2.exe"
set "ANDROID_JAR=%ANDROID_SDK%\platforms\android-35\android.jar"
if not exist "%ANDROID_JAR%" if exist "%ANDROID_SDK%\platforms\android-36\android.jar" set "ANDROID_JAR=%ANDROID_SDK%\platforms\android-36\android.jar"
if not exist "%ANDROID_JAR%" if exist "%ANDROID_SDK%\platforms\android-34\android.jar" set "ANDROID_JAR=%ANDROID_SDK%\platforms\android-34\android.jar"
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
  "%AAPT2%" link --manifest "%ROOT%launcher\tools\maintained_settings_res\AndroidManifest.xml" -I "%ANDROID_JAR%" --auto-add-overlay -o "%ROOT%launcher\assets\settings_maintained\maintained-settings-res.apk" "%ROOT%launcher\scratch\maintained_settings_res\flat\res.zip"
  if errorlevel 1 (
    echo FAIL: aapt2 link maintained settings resources failed.
    exit /b 1
  )
)

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
copy /y "%OUT_DIR%\launcher-unsigned.apk" "%OUT_DIR%\launcher-presigned.apk" >nul
jarsigner -keystore "%KEYSTORE%" -storepass android -keypass android "%OUT_DIR%\launcher-presigned.apk" smartisan
if errorlevel 1 (
  echo FAIL: jarsigner failed.
  exit /b 1
)

if exist "%ZIPALIGN%" (
  "%ZIPALIGN%" -P 16 -f 4 "%OUT_DIR%\launcher-presigned.apk" "%OUT_DIR%\launcher-signed.apk"
  if errorlevel 1 (
    echo FAIL: zipalign failed.
    exit /b 1
  )
) else (
  echo WARN: zipalign not found, using unaligned APK.
  copy /y "%OUT_DIR%\launcher-presigned.apk" "%OUT_DIR%\launcher-signed.apk" >nul
)

echo SUCCESS: %OUT_DIR%\launcher-signed.apk
