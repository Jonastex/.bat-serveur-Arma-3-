@echo off
echo Bienvenue sur le systeme de reboot John 
echo le systeme c est lancer avec succes
color 2
:loop
    FOR /F "TOKENS=1 DELIMS=:" %%A IN ('TIME/T') DO SET HH=%%A
    FOR /F "TOKENS=2 DELIMS=:" %%A IN ('TIME/T') DO SET MM=%%A
    echo il est %HH%:%MM%
    if %HH% == 8 (
        if %MM% == 00 (
            echo Reboot de %HH%:%MM%
            taskkill /f /t /im arma3server_x64.exe
            timeout /t 3 /nobreak
            start "" "startserver.bat"
        )
    )
    if %HH% == 14 (
        if %MM% == 00 (
            echo Reboot de %HH%:%MM%
            taskkill /f /t /im arma3server_x64.exe
            timeout /t 3 /nobreak
            start "" "startserver.bat"
        )
    )
    if %HH% == 20 (
        if %MM% == 00 (
            echo Reboot de %HH%:%MM%
            taskkill /f /t /im arma3server_x64.exe
            timeout /t 3 /nobreak
            start "" "startserver.bat"
        )
    )
    if %HH% == 02 (
        if %MM% == 00 (
            echo Reboot de %HH%:%MM%
            taskkill /f /t /im arma3server_x64.exe
            timeout /t 3 /nobreak
            start "" "startserver.bat"
        )
    )
    echo Systeme de reboot John 
    timeout /t 60 /nobreak
    goto :loop
