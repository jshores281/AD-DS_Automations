


# Creating a new folder on a remote computer:



$computer = "server01"

$folder = "C:\Temp" New-Item -ItemType Directory -Path $folder -Force

