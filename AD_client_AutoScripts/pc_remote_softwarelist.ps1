

# Getting the list of Installed Programs on a Remote Computer


$computer = "server01"

Get-WmiObject -Class Win32_Product ComputerName $computer | Select-Object Property Name, Version


