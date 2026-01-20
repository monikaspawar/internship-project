# PowerShell System Info Script
Write-Host "====== SYSTEM INFORMATION ======" -ForegroundColor Green
Write-Host "Hostname : $env:COMPUTERNAME"
Write-Host "Date : $(Get-Date)"
Write-Host "User : $env:USERNAME"
Write-Host "Uptime : $((Get-Date) - (Get-CimInstance Win32_OperatingSystem).LastBootUpTime)"
Write-Host "Disk Usage:"
Get-WmiObject -Class Win32_LogicalDisk | Select-Object DeviceID, @{Name="Size(GB)";Expression={[math]::Round($_.Size/1GB,2)}}, @{Name="FreeSpace(GB)";Expression={[math]::Round($_.FreeSpace/1GB,2)}} | Format-Table