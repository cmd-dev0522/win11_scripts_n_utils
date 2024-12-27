DISM /online /enable-feature /featurename:VirtualMachinePlatform /norestart
DISM /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /norestart
::REG IMPORT core_iso_on.reg
shutdown /r