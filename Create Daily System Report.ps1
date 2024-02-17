$report = "C:\Reports\SystemReport_$(Get-Date -Format 'yyyyMMdd').txt"
Get-WmiObject -Class Win32_ComputerSystem | Out-File -FilePath $report
Get-WmiObject -Class Win32_Processor | Out-File -FilePath $report -Append
Get-WmiObject -Class Win32_LogicalDisk | Out-File -FilePath $report -Append
