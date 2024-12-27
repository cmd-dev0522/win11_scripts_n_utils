@echo off
:: Get the current directory of this script
set "currentPath=%~dp0"

:: Define paths to scripts, ensuring paths use double backslashes for proper escaping
set "wsl_install=%currentPath%wsl\\wsl_install.cmd"
set "wsl_uninstall=%currentPath%wsl\\wsl_uninstall.cmd"
set "wsl_vmware_install=%currentPath%wsl\\wsl_vmware_install.cmd"
set "reset2bios=%currentPath%restart2bios.cmd"
set "restart_now=%currentPath%wsl\\restart_now.cmd"

:: WSL Aliases
DOSKEY enable_wsl="%wsl_install%"
DOSKEY disable_wsl="%wsl_uninstall%"
DOSKEY enable_wsl_with_vmware_support="%wsl_vmware_install%"

:: Miscellaneous Aliases
DOSKEY reset2bios="%reset2bios%"
DOSKEY restart_now="%restart_now%"
