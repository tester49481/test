$drives = 'C:', 'D:'  # Add more drive letters if needed

foreach ($drive in $drives) {
    Get-ChildItem -Path $drive -File -Recurse | ForEach-Object {
        Write-Host $_.FullName
    }
}

# python3 ./src/inject.py
# Get-ChildItem Env: | ForEach-Object {
#     Write-Output "$($_.Name)=$($_.Value)"
# }
