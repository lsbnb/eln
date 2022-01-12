# ELN Docker Version 3.2.2
# Docker hub image : https://hub.docker.com/r/lsbnb/eln

$sKey = Read-Host "Do you want to install this program? (Y/N)"

if ($sKey -ieq 'N') {exit}

if ($sKey -ieq 'Y') {
  docker pull lsbnb/eln
  docker run --name=eln -dti lsbnb/eln bash

  New-Item -ItemType directory -Path ".\data"
  docker cp eln:/var/lib/mysql ".\data"
  docker cp eln:/var/www/html/elnmobile/sites/default/files ".\data"
  docker rm -f eln;

  Write-Output ""
  Write-Output "Successful installation!!"
  Write-Output ""

  .\eln_start.ps1
}  




