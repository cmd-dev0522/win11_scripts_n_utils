@echo off
:: Get the current directory of the batch script
set "currentPath=%~dp0"

:: Ensure the path uses double backslashes for the registry file
set "escapedPath=%currentPath:\=\\%alias.cmd"

:: Set the AutoRun value in the registry
reg add "HKLM\Software\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d "%escapedPath%" /f

echo AutoRun path set to: %escapedPath%