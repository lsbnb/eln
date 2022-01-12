# ELN Docker Version 3.2.2
# Docker hub image : https://hub.docker.com/r/lsbnb/eln

[int]$num = Read-Host "Please input http port from 1024 to 65535 (Default = 80)"

if ($num -eq 0) {$num = 80}

$sPort = $num.ToString() + ':80'
$sMysql = (Get-Location).path + '\data\mysql:/var/lib/mysql'
$sFile = (Get-Location).path + '\data\files:/var/www/html/elnmobile/sites/default/files'

docker run --name=eln -dti -p $sPort -p 443:443 -v $sMysql -v $sFile lsbnb/eln bash
docker exec eln service apache2 start
docker exec eln service mysql start

Write-Output ""
-join ("Your ELN URL is https://your ip:", $num)
Write-Output ""

Write-Output "Press any key to exit."
$key = $Host.UI.RawUI.ReadKey()
if ($key.Character -eq '') {exit}