$githubEnvPath = $env:GITHUB_ENV

if (Test-Path -Path $githubEnvPath -PathType Leaf) {
    $content = Get-Content -Path $githubEnvPath
    Write-Host "Content of $githubEnvPath:"
    Write-Host $content
} else {
    Write-Host "GITHUB_ENV file not found: $githubEnvPath"
}
