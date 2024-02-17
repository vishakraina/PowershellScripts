# Check and Update Installed Software

Get-WmiObject -Class Win32_Product | ForEach-Object {
    $name = $_.Name
    $version = $_.Version
    # Check for updates or perform other actions
    Write-Host "$name - Version $version"
}