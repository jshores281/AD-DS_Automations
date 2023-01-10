

# Script for automating the deployment of software updates to multiple computers:



# List of computers to update 
$computers = @("server01", "server02", "server03")


# Software update package to install
$update = "KB4512508"


# Loop through the list of computers and install the update


foreach ($computer in $computers) {Write-Host "Installing update $update on $computer..." Invoke-WmiMethod ComputerName $computer Class Win32_QuickFixEngineering Name "HotFixID" ArgumentList $update | Out- Null Write-Host "Update installed on $computer." }


