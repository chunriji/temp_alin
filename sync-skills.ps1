$skillRoot = "$HOME\.codex\skills"

Get-ChildItem $skillRoot -Directory | ForEach-Object {
    if (Test-Path "$($_.FullName)\.git") {
        Write-Host "Syncing $($_.Name)"
        git -C $_.FullName pull
    }
}

Write-Host "Done"

$repo = "$HOME\.codex\skills\alin_skill\.github\skills"
$runtime = "$HOME\.codex\skills"

Get-ChildItem $repo -Directory | ForEach-Object {

    $target = Join-Path $runtime $_.Name

    Write-Host "Syncing $($_.Name)"

    robocopy $_.FullName $target /E
}

Write-Host "Done"
