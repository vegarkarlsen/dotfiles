# A collection of linux configuration files and dotfiles.


### install

Make sure you install the dotfiles to your home directory (to work with stow)

```
cd $HOME
git clone https://github.com/vegarkarlsen/dotfiles.git .dotfiles
```

#### Install pacakges

To install a package:
```
cd .dotfiles
stow <package>
```

Where pacakge is the desired config to install. For exmaple, to install zsh config:

```
cd .dotfiles
stow zsh
```

