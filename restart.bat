@echo off
echo ====================
echo restart made in John 
echo ====================

IF not exist "startserver.bat" (
    echo il n' existe pas de startserveur.bat pour lancer votre serveur
    echo Si vous ne comprennez pas l' erreur veuillez regarder le tutoriel ou me contatcer
    timeout /t 30 /nobreak
    @exit
)

if exist "startserver.bat" (
    echo Le startserveur c' est lancer avec succes
    echo Veuillez garder cette fenetre ouverte pour le fonctionnement du syseme
    start "" "startserver.bat"
    timeout /t 30 /nobreak
    taskkill /f /t /im arma3server_x64.exe
    start "" "restart.bat"
    @exit
)




