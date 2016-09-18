if [[ -e ~/.bashrc ]]; then
    source ~/.bashrc
fi
if [ -e /Users/adrianschaedle/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/adrianschaedle/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# OPAM configuration
. /Users/adrianschaedle/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
