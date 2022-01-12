# ELN Docker Version 3.2.2
# Docker hub image : https://hub.docker.com/r/lsbnb/eln

$sKey = Read-Host "Do you want to uninstall this program? (Y/N)"

if ($sKey -ieq 'N') {exit}

if ($sKey -ieq 'Y') {
  docker rm -f eln
  Remove-Item .\data\* -recurse
  rmdir .\data
  
  Write-Output ""
  Write-Output "Successful uninstallation!!"
  Write-Output ""  
}

Write-Output "Press any key to exit."
$key = $Host.UI.RawUI.ReadKey()
if ($key.Character -eq '') { exit}