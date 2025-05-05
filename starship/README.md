# Starship config

Starship is a cross platform shell theme engine. To install Starship through the install script:

```bash
curl -sS https://starship.rs/install.sh | sh
```
NB! This tries to install to `/usr/local/bin`, for a custom install you can downalod as follows:
```bash
STARSHIP_INSTALL_DIR="$HOME/.local/bin"
wget https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-musl.tar.gz
tar -xf starship-x86_64-unknown-linux-musl.tar.gz -C $STARSHIP_INSTALL_DIR
```
where `$STARSHIP_INSTALL_DIR` is the custom location to install to.

For more information on customization, please visit the official [Starship](https://starship.rs/config/) page.
