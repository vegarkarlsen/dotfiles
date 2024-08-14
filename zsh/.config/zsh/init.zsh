# start tmux if ssh and not allready in one
if [ ! "$TMUX" ] && [ -n "$SSH_CONNECTION" ]; then
    tmux new -A -s main 2>&1 > /dev/null
    command || exit 1
fi

source $ZDOTDIR/ohmyzsh.zsh
source $ZDOTDIR/env.zsh
source $ZDOTDIR/aliases.zsh

# Soruce local alias file if it exists. This is done after
# normal alias file to override if nesesary
LOCAL_ALIASES="$HOME/.aliases_local"
if [ -e  $LOCAL_ALIASES ]; then
    source $LOCAL_ALIASES
fi


