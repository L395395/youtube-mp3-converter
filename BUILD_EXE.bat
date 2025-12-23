@echo off
REM Script para compilar YouTube to MP3 como .exe en Windows

echo ========================================
echo YouTube to MP3 - Build Script
echo ========================================
echo.

REM Verificar si Node.js está instalado
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Node.js no está instalado o no está en el PATH
    echo Descarga Node.js desde: https://nodejs.org/
    pause
    exit /b 1
)

REM Verificar si Python está instalado
where python >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Python no está instalado o no está en el PATH
    echo Descarga Python desde: https://www.python.org/
    pause
    exit /b 1
)

REM Verificar si FFmpeg está instalado
where ffmpeg >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: FFmpeg no está instalado o no está en el PATH
    echo Descarga FFmpeg desde: https://ffmpeg.org/download.html
    pause
    exit /b 1
)

echo ✓ Node.js encontrado
echo ✓ Python encontrado
echo ✓ FFmpeg encontrado
echo.

echo Instalando dependencias de Node.js...
call npm install
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Fallo al instalar dependencias
    pause
    exit /b 1
)

echo.
echo Compilando aplicación...
call npm run build
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Fallo al compilar la aplicación
    pause
    exit /b 1
)

echo.
echo Compilando Electron...
call npm run electron-build
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Fallo al compilar Electron
    pause
    exit /b 1
)

echo.
echo ========================================
echo ✓ ¡Compilación exitosa!
echo ========================================
echo.
echo El archivo .exe se encuentra en:
echo   dist\YouTube-to-MP3-Setup.exe
echo   dist\YouTube-to-MP3-Portable.exe
echo.
pause
