# 🌙 Ultra-Dark Starship Config

A high-contrast, "Deep One Dark" configuration for the [Starship](https://starship.rs/) prompt. This theme removes all bright yellows and oranges, replacing them with a sleek, muted palette of charcoals and deep greys.

## 🚀 Installation

### 1. Requirements
- **Starship:** [Install it here](https://starship.rs/guide/#step-1-install-starship)
- **Nerd Font:** You **MUST** use a Nerd Font (e.g., *JetBrainsMono Nerd Font*) for icons to render.

### 2. Setup Guide

| Shell | Setup Command |
| :--- | :--- |
| **Zsh (Linux/macOS)** | `curl -L https://raw.githubusercontent.com/Drysandwich34/.config/main/starship.toml -o ~/.config/starship.toml` |
| **PowerShell (Windows)** | `Invoke-RestMethod -Uri "https://raw.githubusercontent.com/Drysandwich34/.config/main/starship.toml" -OutFile "$HOME\.config\starship.toml"` |

#### Enable the Prompt
Add the following line to your shell configuration file:

- **Zsh (`~/.zshrc`):** ```zsh
  eval "$(starship init zsh)"
