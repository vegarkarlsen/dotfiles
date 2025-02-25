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


# Edit config files
alias edit-nvim="cd $HOME/.config/nvim; $EDITOR . && cd -"
alias edit-zenv="cd $HOME/.config/zsh; $EDITOR env.zsh; source env.zsh && cd -"
alias edit-zsh="cd; $EDITOR .zshrc; source zshrc && cd -"
alias edit-aliases="cd $HOME/.config/zsh; $EDITOR aliases.zsh; source aliases.zsh && cd -"
alias edit-local-aliases="$EDITOR $LOCAL_ALIASES && source $LOCAL_ALIASES"

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
alias conda-activate="eval $(/home/hurodor/.local/var/anaconda3/bin/conda shell.zsh hook)"


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

