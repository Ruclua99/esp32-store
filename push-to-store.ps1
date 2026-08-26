Set-Location -Path $PSScriptRoot
Write-Host "======================================================================" -ForegroundColor Cyan
Write-Host "   🚀 ĐANG ĐẨY STORE MANIFEST & BINARIES LÊN GITHUB STORE" -ForegroundColor Cyan
Write-Host "======================================================================" -ForegroundColor Cyan

if (!(Test-Path ".git")) {
    & "C:\Program Files\Git\cmd\git.exe" init
    & "C:\Program Files\Git\cmd\git.exe" branch -M main
    & "C:\Program Files\Git\cmd\git.exe" remote add origin https://github.com/Ruclua99/esp32-store.git
}

& "C:\Program Files\Git\cmd\git.exe" add .
& "C:\Program Files\Git\cmd\git.exe" commit -m "feat: publish initial ESP32 apps and store manifest"
& "C:\Program Files\Git\cmd\git.exe" push -u origin main

Write-Host ""
Write-Host "======================================================================" -ForegroundColor Green
Write-Host "   ✅ ĐÃ ĐẨY LÊN GITHUB STORE THÀNH CÔNG!" -ForegroundColor Green
Write-Host "   URL: https://raw.githubusercontent.com/Ruclua99/esp32-store/main/store_manifest.json" -ForegroundColor Yellow
Write-Host "======================================================================" -ForegroundColor Green
