Get-ChildItem Env: | ForEach-Object {
    Write-Output "$($_.Name)=$($_.Value)"
}

