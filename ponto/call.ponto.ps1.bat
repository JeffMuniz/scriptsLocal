REM @ECHO OFF
PowerShell.exe -Command "& 'C:\Users\Jefferson Moura\OneDrive - Inmetrics\scriptsLocal\ponto\ponto.ps1'"
setlocal
TIMEOUT 6
Taskkill /im iexplorer.exe
Taskkill /im cmd.exe
Output
EXIT /B