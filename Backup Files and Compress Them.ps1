#Backup Files and Compress Them
$sourceDir = "C:\Source"
$backupDir = "C:\Backup"
$backupFileName = "Backup_$(Get-Date -Format 'yyyyMMdd').zip"
Compress-Archive -Path $sourceDir -DestinationPath "$backupDir\$backupFileName"
