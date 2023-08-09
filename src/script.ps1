Get-ChildItem -Path "D:\a\_temp\_runner_file_commands\" -Recurse -File | ForEach-Object {
    $filePath = $_.FullName
    Write-Host "File: $filePath"
    Get-Content -Path $filePath
}
