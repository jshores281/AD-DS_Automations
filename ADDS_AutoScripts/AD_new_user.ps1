

# Creating a single new user account in Active Directory:


$username = "jdoe"

$password ConvertTo-SecureString = "Password!" -AsPlainText -Force New-ADUser -Name $username AccountPassword $password -Enabled $true -Path "OU=Users,DC=example,DC=com"
