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
IF not exist "startserver.bat" (
    echo il manque le sys_restart
    timeout /t 30 /nobreak
    @exit
)

if exist "startserver.bat" (
    if exist "sys_restart.bat" (
        echo Le systeme de reboot c est bien lancer
        start "" "sys_restart.bat"
        @exit
    )
)




