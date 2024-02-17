# Automatically Restart a Service:

$servicename= "Spooler"
$service= Get-Service -Name Spooler
if($service.Status -ne "Running"){
    Restart-Service -Name $servicename
}