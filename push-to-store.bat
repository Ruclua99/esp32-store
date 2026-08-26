@echo off
chcp 65001 >nul
title Đẩy Ứng Dụng Lên GitHub Store (Ruclua99/esp32-store)
echo ======================================================================
echo    🚀 ĐANG TỰ ĐỘNG ĐẨY STORE MANIFEST & BINARY LÊN GITHUB STORE
echo ======================================================================
echo.

cd /d "%~dp0"

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
echo    ✅ ĐÃ ĐẨY LÊN GITHUB STORE THÀNH CÔNG!
echo    URL Manifest: https://raw.githubusercontent.com/Ruclua99/esp32-store/main/store_manifest.json
echo ======================================================================
pause
