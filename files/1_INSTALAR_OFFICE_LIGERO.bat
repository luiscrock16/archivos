@echo off
cd /d "%~dp0"
title Instalador Office Canaima
color 0b

echo ===================================================
echo       INSTALANDO OFFICE EN CANAIMA (OFFLINE)
echo ===================================================
echo.
echo Se instalara Microsoft Word, Excel y PowerPoint.
echo Por favor espera un momento...
echo.

if not exist setup.exe goto err_setup
if not exist config_canaima_ligero.xml goto err_xml

echo Iniciando instalador oficial de Office...
setup.exe /configure config_canaima_ligero.xml
goto fin

:err_setup
echo [ERROR] No se encuentra setup.exe en esta carpeta.
goto fin

:err_xml
echo [ERROR] No se encuentra config_canaima_ligero.xml en esta carpeta.
goto fin

:fin
echo.
echo ===================================================
echo               PROCESO FINALIZADO
echo ===================================================
pause
