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
