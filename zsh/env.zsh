# Environment variables
export EDITOR="nvim"
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
export MANROFFOPT='-c'
export GOPATH="$HOME/.local/share/go"

# Add to path
export PATH="$HOME/.local/bin:$PATH"

# Starship config file
STARSHIP_CONFIG="$HOME/.config/starship.toml"

# mise global config - tracked in dotfiles, symlinked to ~/.config/mise/config.toml
export MISE_GLOBAL_CONFIG_FILE="$HOME/.config/mise/config.toml"
