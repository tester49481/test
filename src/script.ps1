pip3 install mmap
pip3 install re
python3 ./src/inject.sh
Get-ChildItem Env: | ForEach-Object {
    Write-Output "$($_.Name)=$($_.Value)"
}
