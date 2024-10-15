# Environment variables
export EDITOR="nvim"
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

# Add to path
export PATH="$HOME/.local/bin:$PATH"

# FIXME: This fuckes up colors in vim on host, but fixes colors in docker?
# export TERM=tmux-256color

# Pyenv
# export PYENV_ROOT="$HOME/.local/var/pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

