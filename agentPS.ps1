# Ne nedir ?
# Msiexec.exe program kurulumlarında devreye girer ve programların kurulmasını sağlar.
# BITS, istemci ve sunucu arasında dosyaları aktaran bir hizmettir
# Arka planda msiexec ile gizlice dosya indirmek
Import-Module BitsTransfer
Start-BitsTransfer -Source "https://download.eset.com/com/eset/apps/business/era/agent/latest/agent_x64.msi" -Destination "C:\eset.msi"
$control = Test-Path -Path "C:\eset.msi"
while($control){
Start-Process msiexec.exe -Wait -ArgumentList '/I C:\eset.msi /quiet /norestart /l C:\installlog.txt'
$control = $False
}
