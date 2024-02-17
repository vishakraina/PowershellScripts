$eventID = 8015 # Example Event ID
Get-EventLog -LogName System | Where-Object {$_.EventID -eq $eventID}
