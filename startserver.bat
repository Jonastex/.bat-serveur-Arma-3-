@echo off
echo ==============================
echo Starting the Altis Life Server
echo ==============================
echo.

set svExe=arma3server_x64.exe
set svPort=2302
set svMod=@life_server;@extDB3;

IF not exist "basic.cfg" (
  echo ==============================
  echo    Creating basic.cfg file
  echo ==============================
  echo.

  echo MaxMsgSend = 128; >> basic.cfg
  echo MaxSizeGuaranteed = 512; >> basic.cfg
  echo MaxSizeNonguaranteed = 256; >> basic.cfg
  echo MinBandwidth = 131072; >> basic.cfg
  echo MaxBandwidth = 2097152000; >> basic.cfg
  echo MinErrorToSend = 0.001; >> basic.cfg
  echo MinErrorToSendNear = 0.01; >> basic.cfg
  echo MaxCustomFileSize = 1310720; >> basic.cfg
  echo class sockets{maxPacketSize = 1400;}; >> basic.cfg
  echo adapter=-1; >> basic.cfg
  echo 3D_Performance=1; >> basic.cfg
  echo Resolution_W=0; >> basic.cfg
  echo Resolution_H=0; >> basic.cfg
  echo Resolution_Bpp=32; >> basic.cfg
  echo terrainGrid=25; >> basic.cfg
  echo viewDistance=2000; >> basic.cfg
  echo Windowed=0; >> basic.cfg

  PING -n 2 127.0.0.1>nul
)

IF not exist "config.cfg" (
  echo ==============================
  echo    Creating config.cfg file
  echo ==============================
  echo.


  echo hostName = "Seveur test "; >> config.cfg
  echo password = ""; >> config.cfg
  echo passwordAdmin = "123456"; >> config.cfg
  echo serverCommandPassword = ""; >> config.cfg
  echo logFile = ""; >> config.cfg
  echo motd[] = { >> config.cfg
  echo }; >> config.cfg
  echo. >> config.cfg
  echo motdInterval = 3; >> config.cfg
  echo maxPlayers = 75; >> config.cfg
  echo kickduplicate = 1; >> config.cfg
  echo verifySignatures = 2; >> config.cfg
  echo allowedFilePatching = 0; >> config.cfg
  echo requiredSecureId = 0; >> config.cfg
  echo voteMissionPlayers = 150; >> config.cfg
  echo voteThreshold = 1.5; >> config.cfg
  echo disableVoN = 0; >> config.cfg
  echo vonCodecQuality = 10; >> config.cfg
  echo persistent = 1; >> config.cfg
  echo timeStampFormat = "none"; >> config.cfg
  echo BattlEye = 0; >> config.cfg
  echo. >> config.cfg
  echo doubleIdDetected = ""; >> config.cfg
  echo onUserConnected = ""; >> config.cfg
  echo onUserDisconnected = ""; >> config.cfg
  echo onHackedData = ""; >> config.cfg
  echo onDifferentData = ""; >> config.cfg
  echo onUnsignedData = ""; >> config.cfg
  echo regularCheck = ""; >> config.cfg
  echo. >> config.cfg
  echo class Missions >> config.cfg
  echo { >> config.cfg
  echo  class Mission_1 >> config.cfg
  echo  { >> config.cfg
  echo      template = "Altis_Life.Altis"; >> config.cfg
  echo      difficulty = "regular"; >> config.cfg
  echo         class regular >> config.cfg
  echo         { >> config.cfg
  echo          visionAid = 0; >> config.cfg
  echo         }; >> config.cfg
  echo  }; >> config.cfg
  echo }; >> config.cfg

  PING -n 2 127.0.0.1>nul
)

:folder
set Folder=ServerProfiles
IF not exist %Folder% (
  echo ==============================
  echo Creating ServerProfiles Folder
  echo ==============================
  echo.

  mkdir %Folder%

  PING -n 2 127.0.0.1>nul
)

echo ==============================
echo Server .exe: %svExe%
echo ==============================
echo.


start "" "%svExe%" -cfg=basic.cfg -config=config.cfg -profiles=ServerProfiles -nosound -port=%svPort% -serverMod=%svMod% -autoInit;
PING -n 2 127.0.0.1>nul

echo ==============================
echo Listening to port: %svPort%
echo ==============================
echo.

PING -n 2 127.0.0.1>nul

echo ==============================
echo Mods: %svMod%
echo ==============================
echo.

PING -n 8 127.0.0.1>nul
@exit