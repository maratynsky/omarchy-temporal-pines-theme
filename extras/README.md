# Optional terminal styling

These configurations complement the Temporal Pines terminal palette:

- `starship.toml`: magenta directory and prompt, cyan Git branch, amber Git status.
- `eza/theme.yml`: cyan folders, magenta headings and media files, amber dates and sizes.

They use ANSI color names, so their colors follow the terminal palette when you switch themes. These are user-wide settings, not automatically applied or removed by Omarchy theme switching.

## Install

Requires Starship and eza, with Starship enabled in your shell. Review or merge the files if you already have custom settings. From the repository root, back up your existing configurations and copy the extras:

```bash
backup_dir="$HOME/.local/state/temporal-pines/terminal-backup-$(date +%Y%m%d-%H%M%S)"
mkdir -p "$backup_dir" "$HOME/.config/eza"
[ ! -f "$HOME/.config/starship.toml" ] || cp -p "$HOME/.config/starship.toml" "$backup_dir/starship.toml"
[ ! -f "$HOME/.config/eza/theme.yml" ] || cp -p "$HOME/.config/eza/theme.yml" "$backup_dir/eza-theme.yml"
cp extras/starship.toml "$HOME/.config/starship.toml"
cp extras/eza/theme.yml "$HOME/.config/eza/theme.yml"
```

Press Enter for a fresh prompt, then run `ls` again (or `eza -lh --icons`). Existing terminal output retains its original colors.
