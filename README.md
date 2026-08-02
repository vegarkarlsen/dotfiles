# A collection of linux configuration files and dotfiles.


## install

Requires [mise](https://mise.jdx.dev/) to already be installed (`curl https://mise.run | sh`).

```
git clone https://github.com/vegarkarlsen/dotfiles.git $HOME/.dotfiles
MISE_GLOBAL_CONFIG_FILE="$HOME/.dotfiles/mise.toml" mise bootstrap
```

This clones/updates external repos (oh-my-zsh, oh-my-tmux), initializes submodules,
symlinks every dotfile into place (including `mise.toml` itself, into
`~/.config/mise/config.toml`), sets zsh as the login shell, and installs the pinned
CLI tools. Safe to re-run; see `mise bootstrap status` / `mise bootstrap --dry-run`
to preview first.

### Font

I currently uses the patched MesloLGS NF font from powerlevel10k. The font can be downloaded direclty from the [powerlevel10k-project](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#meslo-nerd-font-patched-for-powerlevel10k) on github.


## Notes
 - Gnome shell- and gtk themes currelty need to be set manually
