# Task 5: Process Management - Windows Version

Write-Host "=== TASK 5: PROCESS MANAGEMENT ===" -ForegroundColor Green
Write-Host "Date: $(Get-Date)"
Write-Host ""

# 1. List running processes
Write-Host "1. LISTING PROCESSES:" -ForegroundColor Cyan
Get-Process | Select-Object -First 5 Name, Id, CPU, WorkingSet | Format-Table
Write-Host "Top CPU processes:"
Get-Process | Sort-Object CPU -Descending | Select-Object -First 3 Name, Id, CPU | Format-Table

# 2. Kill processes demo
Write-Host "2. KILL PROCESS DEMO:" -ForegroundColor Cyan
Start-Process notepad -PassThru | ForEach-Object {
    $pid = $_.Id
    Write-Host "Started test process PID: $pid"
    Start-Sleep 2
    Stop-Process -Id $pid -Force
    Write-Host "Killed process $pid"
}

# 3. Process states
Write-Host "3. PROCESS STATES:" -ForegroundColor Cyan
Get-Process | Select-Object -First 5 Name, Id, Responding | Format-Table

# 4. Service management
Write-Host "4. SERVICE MANAGEMENT:" -ForegroundColor Cyan
Get-Service Spooler | Format-List Name, Status, StartType

# 5. Service boot config
Write-Host "5. SERVICE BOOT CONFIG:" -ForegroundColor Cyan
Get-Service | Where-Object {$_.StartType -eq "Automatic"} | Select-Object -First 3 Name, StartType | Format-Table

# 6. Resource monitoring
Write-Host "6. RESOURCE MONITORING:" -ForegroundColor Cyan
$memory = Get-CimInstance Win32_OperatingSystem
Write-Host "Memory: $([math]::Round($memory.FreePhysicalMemory/1MB,2))GB free of $([math]::Round($memory.TotalVisibleMemorySize/1MB,2))GB"
$uptime = (Get-Date) - (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
Write-Host "Uptime: $($uptime.Days) days, $($uptime.Hours) hours"

Write-Host "`n=== TASK COMPLETED ===" -ForegroundColor Green