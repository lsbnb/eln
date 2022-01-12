# ELN Docker Version 3.2.2
# Docker hub image : https://hub.docker.com/r/lsbnb/eln

docker rm -f eln

Write-Output ""
Write-Output "ELN service stop!!"
Write-Output ""

Write-Output "Press any key to exit."
$key = $Host.UI.RawUI.ReadKey()
if ($key.Character -eq '') {exit}
