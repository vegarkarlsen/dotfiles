# vim:filetype=zsh
# ----------------------------------------------------------------------------------------
# Nice aliases to make life easier
# ----------------------------------------------------------------------------------------

# Lazy ls
alias la='ls -a'
alias sl="ls"

# fd
alias fd="fdfind"

# Lazy git - Override ghost script
alias gs="git status"

#Editor
alias vi="vim"
alias vim="nvim"
# alias mutt="neomutt"


# Edit config files - functions, not aliases: $EDITOR/$LOCAL_ALIASES aren't set yet
# when this file is sourced (aliases.zsh loads before env.zsh/zshrc alphabetically),
# so a double-quoted alias would bake in an empty value permanently.
edit-nvim(){
    cd "$HOME/.config/nvim"; $EDITOR . && cd -
}
edit-zenv(){
    cd "$HOME/.config/zsh"; $EDITOR env.zsh; source env.zsh && cd -
}
edit-zsh(){
    cd; $EDITOR .zshrc; source zshrc && cd -
}
edit-aliases(){
    cd "$HOME/.config/zsh"; $EDITOR aliases.zsh; source aliases.zsh && cd -
}
edit-local-aliases(){
    $EDITOR "$LOCAL_ALIASES" && source "$LOCAL_ALIASES"
}

alias malias='edit-aliases'
alias maliasl="edit-local-aliases"

# Qucik acsess and movement
open-nautilus(){
    nautilus $1 & disown
}
alias e=open-nautilus
alias cd..="cd .."
alias dotfiles="git -C ~/.dotfiles"
alias dotf="dotfiles"
alias lbin="$HOME/.local/bin"

# VPN - NTNU
alias nvpn="openconnect vpn.ntnu.no"
alias nord="nordvpn"
alias mesh="nordvpn mesh peer"

# Python
alias activate="source venv/bin/activate"   # virtualenv
alias manage="python3 manage.py"            # Django


# Always open tmux in main window
alias tm='tmux new -A -s main'
alias mux='tmuxinator'

# Batcat
alias bat="batcat"

# Rotate screen to normal
alias nscreen="xrandr -o normal"

# Matlab
alias mlab="start-matlab -nodesktop -nosplash -nosoftwareopengl -logfile $HOME/.local/var/log/matlab.log"

# zathura
alias zat="zathura"

# copy/paste
alias clip="xclip -selection clipboard"

