

# Show the current environment variables on a remote computer Copy code 

$computer = "server01" 

Get-WmiObject -Class Win32_Environment ComputerName $computer | Where-Object {$_.UserName -eq "SYSTEM"} | Select- Object Name, VariableValue



