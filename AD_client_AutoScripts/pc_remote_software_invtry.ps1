



# Script for automating the inventory of installed software on multiple remote computers




$computers = Get-Content Path "C:\computers.txt"
$software = @{}



foreach ($computer in $computers) { $installed = Get-WmiObject -Class Win32_Product -ComputerName $computer | Select-Object Property Name, Version $software[$computer] $installed} $software | Export-Csv -Path "C:\software_inventory.csv" -NoTypeInformation


