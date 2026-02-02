# 1. Install Starship
winget install --id Starship.Starship --silent

# 2. Create config directory
$configDir = "$HOME\.config"
if (!(Test-Path $configDir)) { New-Item -ItemType Directory -Path $configDir }

# 3. Download your TOML from GitHub
$url = "https://raw.githubusercontent.com/Drysandwich34/.config/main/starship.toml"
Invoke-WebRequest -Uri $url -OutFile "$configDir\starship.toml"

# 4. Add Starship to PowerShell Profile
$line1 = '$env:STARSHIP_CONFIG = "$HOME\.config\starship.toml"'
$line2 = 'Invoke-Expression (&starship init powershell)'
if (!(Test-Path $PROFILE)) { New-Item -Type File -Path $PROFILE -Force }
Add-Content -Path $PROFILE -Value "`n$line1`n$line2"

Write-Host "Done! Restart PowerShell to see your new prompt." -ForegroundColor Cyan
