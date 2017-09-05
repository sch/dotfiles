test -e ~/.bashrc && source ~/.bashrc

if [ -e /Users/adrianschaedle/.nix-profile/etc/profile.d/nix.sh ]; then
  . /Users/adrianschaedle/.nix-profile/etc/profile.d/nix.sh
fi # added by Nix installer




# Manage ssh keys through the Keychain utility on linux
if command -v keychain 2>/dev/null; then
  echo "Setting up keychain to provide ssh keys..."
  keychain id_rsa
  source ~/.keychain/localhost-sh
fi
