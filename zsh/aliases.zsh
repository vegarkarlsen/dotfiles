# vim:filetype=zsh 
# ----------------------------------------------------------------------------------------
# Nice aliases to make life easier
# ----------------------------------------------------------------------------------------

# Lazy ls
alias la='ls -a'
alias sl="ls"

# Lazy git - Override ghost script
alias gs="git status"

#Editor
alias vi="vim"
alias vim="nvim"
# alias mutt="neomutt"


# Edit config files
alias edit-nvim="cd $HOME/.config/nvim; $EDITOR . && cd -"
alias edit-zenv="cd $HOME/.config/zsh/env.zsh; $EDITOR env.zsh; source env.zsh && cd -"
alias edit-zsh="cd $HOME/.config/zsh/; $EDITOR init.zsh; source init.zsh && cd -"
alias edit-aliases="cd $HOME/.config/zsh/aliases.zsh; $EDITOR aliases.zsh; source aliases.zsh && cd -"
alias malias='edit-aliases'

# Qucik acsess and movement
alias e="nautilus $args"
alias cd..="cd .."

# Dotfiles
alias dotfiles="git -C ~/.dotfiles $args"
alias dotf="dotfiles"

# VPN - NTNU
alias nvpn="openconnect vpn.ntnu.no"
alias nord="nordvpn"
alias mesh="nordvpn mesh peer"

# Python
alias activate="source venv/bin/activate"   # virtualenv
alias manage="python3 manage.py"            # Django

# Always open tmux in main window
alias tm='tmux new -A -s main'

# Batcat
alias bat="batcat"

# Rotate screen to normal
alias nscreen="xrandr -o normal"

# Matlab
alias mlab="matlab -nodesktop -nosoftwareopengl"

