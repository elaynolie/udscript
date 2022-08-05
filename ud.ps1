"Script UD Operator version August 2022"
Set-NetFirewallProfile -All -Enabled False
New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco feature enable -y -allowGlobalConfirmation
choco install element-desktop -y
New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install openvpn -y
cd "$env:HOMEDRIVE$Env:HOMEPATH\Downloads"
Invoke-WebRequest -Uri "https://cloud.colynn.pro/s/8aJDcn3f787BxEM/download/NauSoftPhone-21.8.3.4_ru.msi" -outfile "$env:HOMEDRIVE$Env:HOMEPATH\Downloads\NauSoftPhone-21.8.2.5_ru.msi" 
.\NauSoftPhone-21.8.2.5_ru.msi /quiet
