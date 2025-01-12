Write-Host "======================================" -ForegroundColor Cyan
Write-Host " WinSysInsight - System Diagnostics " -ForegroundColor Cyan
Write-Host "======================================" -ForegroundColor Cyan

# OS Information
Write-Host "`n[System Information]" -ForegroundColor Green
Get-CimInstance -ClassName Win32_OperatingSystem | Format-Table Caption, OSArchitecture, Version -AutoSize

# CPU Information
Write-Host "`n[CPU Information]" -ForegroundColor Green
Get-CimInstance -ClassName Win32_Processor | Format-Table Name, MaxClockSpeed, NumberOfCores, NumberOfLogicalProcessors -AutoSize
