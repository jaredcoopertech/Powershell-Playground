$days = Get-Uptime | select-object -Expand Days
$hours = Get-Uptime | select-object -Expand Hours
$minutes = Get-Uptime | select-object -Expand Minutes
Write-Output("Your system has been up for $days days, $hours hours, and $minutes minutes.")