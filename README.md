# 💤 LazyVim Config

A custom [LazyVim](https://github.com/LazyVim/LazyVim) configuration.

## Installation on a New Machine

To clone this config on a new machine:

```bash
git clone https://github.com/jacobdcastro/nvim-config.git ~/.config/nvim
```

Then launch Neovim. LazyVim will automatically install all plugins and dependencies on first launch.

## Updating the Config

To update your local config with the latest changes from the remote:

```bash
cd ~/.config/nvim
git pull origin main
```

Neovim will automatically detect any changes and reload your configuration.

## Making Changes

After modifying your config, commit and push your changes:

```bash
cd ~/.config/nvim
git add .
git commit -m "Your commit message"
git push origin main
```

This ensures your config stays synced across all machines.
