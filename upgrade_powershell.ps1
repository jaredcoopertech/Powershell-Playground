$url = "https://github.com/PowerShell/PowerShell/releases/download/v7.3.2/PowerShell-7.3.2-win-x64.msi"
$output = "PowerShell-7.3.2-win-x64.msi"
Import-Module BitsTransfer
Start-BitsTransfer -Source $url -Destination $output
msiexec.exe /package PowerShell-7.3.2-win-x64.msi /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ADD_FILE_CONTEXT_MENU_RUNPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1 USE_MU=1 ENABLE_MU=1 ADD_PATH=1