@echo off
cd /d "%~dp0"
title Instalador Automatico de Office Ligero - Canaimas (MiniOS 10)
color 0b

echo ======================================================================
echo       INSTALADOR DE OFFICE LIGERO PARA CANAIMA (MiniOS 10)
echo         Arquitectura: 32 bits (x86) - Optimizada para 1GB/2GB RAM
echo ======================================================================
echo.
echo Aplicaciones que se van a instalar:
echo   - Microsoft Word
echo   - Microsoft Excel
echo   - Microsoft PowerPoint
echo.
echo (Se han desactivado aplicaciones pesadas como Teams, OneDrive y
echo  telemetria para que la Canaima no se ponga lenta).
echo.
if exist "Office" (
    echo [MODO DETECTADO]: INSTALACION LOCAL OFFLINE (Archivos encontrados en la carpeta).
) else (
    echo [MODO DETECTADO]: INSTALACION EN LINEA (Descarga directa desde Microsoft).
    echo Asegurate de que la Canaima este conectada a WiFi o cable de red.
)
echo.
if not exist "setup.exe" (
    echo [ERROR CRITICO]: No se encontro 'setup.exe' en esta carpeta.
    echo Asegurate de que este archivo .bat este en la misma carpeta que setup.exe.
    pause
    exit /b
)
if not exist "config_canaima_ligero.xml" (
    echo [ERROR CRITICO]: No se encontro 'config_canaima_ligero.xml'.
    pause
    exit /b
)

echo Presiona cualquier tecla para comenzar la instalacion automatica...
pause >nul
echo.
echo Instalando Microsoft Office... Por favor espera unos minutos.
echo (La ventana oficial de instalacion de Office se abrira en pantalla).
echo.

setup.exe /configure config_canaima_ligero.xml

echo.
echo ======================================================================
echo                      INSTALACION FINALIZADA
echo ======================================================================
echo.
echo Si no viste ningun error, ya puedes abrir Word, Excel y PowerPoint
echo desde el Menu Inicio de Windows.
echo.
pause
