#Monitor CPU Usage and Take Action if High:

<#

Setting Threshold:

$threshold = 80: This line sets the threshold percentage for CPU usage. In this case, it's set to 80%.
Getting CPU Usage:

$cpuUsage = (Get-WmiObject -Class Win32_PerfFormattedData_PerfOS_Processor | Select-Object -First 1).PercentProcessorTime: This line retrieves the current CPU usage percentage. It uses the Get-WmiObject cmdlet to query Windows Management Instrumentation (WMI) for performance data related to the processor (Win32_PerfFormattedData_PerfOS_Processor).
Select-Object -First 1 is used to select only the first instance of CPU performance data, assuming there's only one processor on the system.
.PercentProcessorTime retrieves the percentage of time that the processor spends executing a non-idle thread. This value represents the current CPU usage.
Checking CPU Usage Against Threshold:

if ($cpuUsage -gt $threshold): This line checks if the current CPU usage ($cpuUsage) exceeds the threshold set earlier ($threshold).
If the CPU usage is greater than the threshold, the condition evaluates to true, and the subsequent code block is executed.
Taking Action:

Write-Host "High CPU Usage Detected: $cpuUsage%": If high CPU usage is detected, this line writes a message to the console indicating the detected CPU usage percentage.
Following the message, there's a comment # Take action here, such as sending an alert or restarting a service. This indicates where you would include code to take appropriate action based on the detected high CPU usage. For example, you might send an alert notification, trigger an automated response, or restart a service to alleviate the CPU load.

#>

$threshold = 80 # Set threshold percentage
$cpuUsage = (Get-WmiObject -Class Win32_PerfFormattedData_PerfOS_Processor | Select-Object -First 1).PercentProcessorTime
if($cpuUsage -gt $threshold) {
    Write-Host "High CPU Usage Detected: $cpuUsage%"
}
    # Take action here, such as sending an alert or restarting a service
elseif($cpuUsage -lt $threshold){
    Write-Host "CPU threshold under control"

}