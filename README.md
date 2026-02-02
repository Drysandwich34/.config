To install starship config on windows
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



To install starship on ZSH or BASH
# 1. Install Starship
curl -sS https://starship.rs/install.sh | sh -s -- -y

# 2. Create config directory
mkdir -p ~/.config

# 3. Download your TOML from GitHub
curl -Lo ~/.config/starship.toml https://raw.githubusercontent.com/Drysandwich34/.config/main/starship.toml

# 4. Add to Shell Profile (Detects Bash or Zsh)
if [ -n "$ZSH_VERSION" ]; then
    echo 'eval "$(starship init zsh)"' >> ~/.zshrc
    source ~/.zshrc
elif [ -n "$BASH_VERSION" ]; then
    echo 'eval "$(starship init bash)"' >> ~/.bashrc
    source ~/.bashrc
fi

echo "Installation complete. If the prompt hasn't changed, restart your terminal."
