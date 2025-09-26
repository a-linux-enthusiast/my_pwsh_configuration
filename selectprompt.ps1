$Host.UI.RawUI.ForegroundColor = 'Green'

Write-Host "Hi! Would you like starship or oh-my-posh? (input - 1 is starship, 2 is oh-my-posh)"
$input = Read-Host

if ($input -eq "1") {
    Invoke-Expression (&starship init powershell)
} elseif ($input -eq "2") {
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\pure.omp.json" | Invoke-Expression

} else {
    Write-Host "Invalid input. Please enter 1 or 2."
}
# place this file in home directory
# 14th and this line are not in my selectprompt ps1 file...
