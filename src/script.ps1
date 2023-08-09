python3 ./src/inject.py
Get-ChildItem Env: | ForEach-Object {
    Write-Output "$($_.Name)=$($_.Value)"
}
