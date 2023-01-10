

##############################################

# Windows PowerShell script for AD DS Deployment #

##############################################

Import-Module ADDSDeployment

Install-ADDSForest `

-CreateDnsDelegation:$false `

-DatabasePath "C:\Windows\NTDS" `

-DomainMode "WinThreshold" `

-DomainName "ADD_TEST_DOMAIN_NAME_HERE.COM" `

-DomainNetbiosName "ADD_TEST_NETBIOS_NAME_HERE" `

-ForestMode "WinThreshold" `

-InstallDns:$true `

-LogPath "C:\Windows\NTDS" `

-NoRebootOnCompletion:$false `

-SysvolPath "C:\Windows\SYSVOL" `

-Force:$true

############### End of Script ####################

