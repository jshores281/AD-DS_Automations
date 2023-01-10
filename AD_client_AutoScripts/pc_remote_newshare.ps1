

# Creating a new file share on a remote computer


$computer = "server01"
$shareName = "MyShare"
$path = "C:\Shares"
$description = "This is a test share." 

New-SmbShare -Name $shareName -Path $path -FullAccess Everyone -Description $description -CimSession $computer 



