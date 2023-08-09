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
