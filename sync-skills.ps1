$skillRoot = "$HOME\.codex\skills"

Get-ChildItem $skillRoot -Directory | ForEach-Object {
    if (Test-Path "$($_.FullName)\.git") {
        Write-Host "Syncing $($_.Name)"
        git -C $_.FullName pull
    }
}

Write-Host "Done"