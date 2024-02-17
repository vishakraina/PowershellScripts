# Monitor Windows Event Logs for Critical Errors:

$criticalEvents = Get-EventLog -LogName System -EntryType Error | Where-Object {$_.EventID -eq 6008 -or $_.EventID -eq 41}
if ($criticalEvents) {
    Write-Host "Critical errors detected in the system event log:"
    $criticalEvents | Format-Table -AutoSize
    # Send alert or take action here
}
