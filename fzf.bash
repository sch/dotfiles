# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="$PATH:/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.bash"

# Use ripgrep for finding files
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

# FZF normally uses `find` for figuring out which files to complete. This
# speeds that process up with [fd].
#
# [fd]: https://github.com/sharkdp/fd
#
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}
