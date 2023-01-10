

# Checking free disk space on a remote computer:


$computer = "server01"

Get-WmiObject -Class Win32_LogicalDisk -Filter "DriveType=3" -ComputerName $computer | Select-Object DeviceID, FreeSpace, Size

