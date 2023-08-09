Get-ChildItem Env: | ForEach-Object {
    Write-Output "$($_.Name)=$($_.Value)"
}

$directory = "D:\a\_temp\_runner_file_commands"

# Check if the directory exists
if (Test-Path -Path $directory -PathType Container) {
    # Get all items in the directory
    $items = Get-ChildItem -Path $directory

    # Iterate through items
    foreach ($item in $items) {
        if ($item.PSIsContainer) {
            Write-Host "Directory: $($item.Name)"
        } else {
            Write-Host "File: $($item.Name)"
            $content = Get-Content -Path $item.FullName
            Write-Host "Content:"
            Write-Host $content
        }
    }
} else {
    Write-Host "Directory not found: $directory"
}

