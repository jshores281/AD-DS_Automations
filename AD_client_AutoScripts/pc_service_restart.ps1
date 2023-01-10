
# Restarting a remote service:

$computer = "server01"

$service = "Server" (Get-WmiObject -Class Win32_Service Filter "Name='$service'" -ComputerName $computer). InvokeMethod("Restart", $null)

