


# Script for automating monitoring of disk space on remote computer, sending alert on specific threshold



$computer = "server01"
$threshold = 80
$drive = "C:"
$FreeSpace = (Get-WmiObject



-Class Win32_LogicalDisk Filter "DeviceID='$drive'" ComputerName $computer). FreeSpace/1GB If ($FreeSpace -1t $threshold) {Send-MailMessage - From "alert@example.com" -To "admin@example.com" -Subject "Low Disk Space Alert" -Body "Drive $drive on $computer has less than $threshold% of free space remaining. Available space is $FreeSpace GB." -SmtpServer "smtp.example.com"}






