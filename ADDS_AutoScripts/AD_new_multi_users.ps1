


# Script for automating the creation of new user accounts in Active Directory:



# CSV file containing the new user accounts 
$users = Import-Csv -Path "C:\users.csv"

# Loop through the list of users and create new AD accounts

foreach ($user in $users) { $username = $user.Username $password = ConvertTo- SecureString $user.Password -AsPlainText -Force $firstname = $user.FirstName $lastname = $user.LastName $email = $user.Email $department = $user.Department


# Create the new AD user

New-ADUser SamAccountName $username GivenName $firstname Surname $lastname - Email $email -Department $department -AccountPassword $password -Enabled $true -Path "OU=Users,DC=example,DC=com" Write-Host "New user account created for $username"}




