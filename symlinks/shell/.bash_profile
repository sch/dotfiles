# Catalina nags you to replace your default shell with ZSH if you are running
# bash, regardless if you are running a modern version vs the one that ships
# with OSX. This turns that message off:
export BASH_SILENCE_DEPRECATION_WARNING=1

if [ -r ~/.profile ]; then . ~/.profile; fi
test -e ~/.bashrc && source ~/.bashrc

# Manage ssh keys through the Keychain utility on linux
if command -v keychain 2>/dev/null; then
  echo "Setting up keychain to provide ssh keys..."
  keychain id_rsa
  source ~/.keychain/localhost-sh
fi

export PATH="$HOME/.cargo/bin:$PATH"


if [ -e /Users/adrian/.nix-profile/etc/profile.d/nix.sh ]; then
  source /Users/adrian/.nix-profile/etc/profile.d/nix.sh
fi # added by Nix installer
