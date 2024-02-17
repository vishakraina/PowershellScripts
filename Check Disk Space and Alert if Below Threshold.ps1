#Check Disk Space and Alert if Below Threshold:

$threshold = 80 #Set threshold percentage
$diskspace = Get-WmiObject -Class Win32_LogicalDisk | Where-Object{$_.Drivetype -eq 3}
foreach($disk in $diskspace){
    $freespacepercent=[Math]::Round(($disk.freespace /$disk.size) * 100,2)
    if ($freeSpacePercent -lt $threshold) {
        Write-Host "Disk $($disk.DeviceID) has low free space: $($freeSpacePercent)%"
        # Send alert or take action here
    }
}