@echo off
setlocal
cd /d "%~dp0"
echo ======================================================================
echo    Day ung dung len GitHub Store (Ruclua99/esp32-store)
echo ======================================================================
echo.

if not exist ".git" (
    git init
    git branch -M main
    git remote add origin https://github.com/Ruclua99/esp32-store.git
)

git add .
git commit -m "feat: publish initial ESP32 apps and store manifest"
git push -u origin main

echo.
echo ======================================================================
echo    DA DAY LEN GITHUB STORE THANH CONG!
echo    URL Manifest: https://raw.githubusercontent.com/Ruclua99/esp32-store/main/store_manifest.json
echo ======================================================================
pause
