

# Retrieving information about a remote computer's operating system:



$computer = "server01"

Get-WmiObject -Class Win32_OperatingSystem -ComputerName $computer


