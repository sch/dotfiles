# Port of __git_ps1 for Fish shell (tested with FishFish)
#--------------------------------------------------------
# https://github.com/bjeanes/dot-files/tree/294254ce2f064bbfc586e98107da1ed510898ffd/fish/functions
# via @bjeanes - https://github.com/bjeanes

source ~/.config/fish/j.fish
source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish
eval (direnv hook fish)

alias cl 'clear; ls -lah'

alias g 'git status'
alias gg 'git commit -am'

alias f 'find . | grep'


function fish_prompt --description 'Write out the prompt'
  # printf '%s%s@%s%s ' (set_color green) (whoami) (hostname|cut -d . -f 1) (set_color normal) 

  # Write the process working directory
  if test -w "."
    printf '%s%s' (set_color blue) (prompt_pwd)
  else
    printf '%s%s' (set_color cyan) (prompt_pwd)
  end

  printf ' %s%s ' (set_color yellow) (vcprompt)

  # printf '%s$%s ' (set_color -o $fish_color_cwd) (set_color normal)

  printf '%s\n→ ' (set_color normal)

end
