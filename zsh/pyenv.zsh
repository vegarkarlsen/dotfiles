
# do not enable pyenv if in ros
if [[ ! -z $ROS_DISTRO ]]; then
    return
fi

# Exit if pyenv installation does not exists
export PYENV_ROOT="$HOME/.local/var/pyenv"
if [[ ! -d $PYENV_ROOT ]]; then
    return
fi


[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
