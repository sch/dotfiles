# Set PATH, CDPATH, EDITOR, etc.
#
# When setting the path, you use "export PATH=" then the dir
# "export PATH=[dir]:$PATH" will prepend the path with [dir]
# "export PATH=:$PATH:[dir]" will append the path with [dir]
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/go/libexec/bin:$PATH"
export PATH="~/.bin:$PATH"

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

eval "$(docker-machine env docker-vm)"

VCPROMPT_FORMAT='[%b:%r]'
PS1="\W \$(vcprompt)● "

eval "$(direnv hook bash)" # Must come last

# Utility
alias reload='source ~/.bashrc'
alias edit-config='vim ~/.bashrc && reload' # Edit aliases

# Common -- Some are from Damian Conway
alias a='ls -A' # -A all except literal . ..
alias la="ls -A -l -G"
alias c='clear'
alias cdd='cd -' # goto last dir cd'ed from
alias cl='clear; l'
function cdc() {
  cd $1; ls
}
alias l.='ls -d .[^.]*'
alias l='ls -lhGt'  # -l long listing, most recent first
                    # -G color
alias lh="ls -lh"
alias ll='ls -lhG'  # -l long listing, human readable, no group info
alias lt='ls -lt'   # sort with recently modified first

alias git='hub'
alias repos='tree -L 2 ~/github'

alias md='mkdir -p'

alias s='cd ..'     # up one dir
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

function take() {
    mkdir -p "$1"
    cd "$1"
}

prettypath() {
  echo "Sourced from top to bottom:"
  echo $PATH | tr -s ':' '\n'
}

alias e='exit'
alias k9="killall -9"
function killnamed () {
  ps ax | grep $1 | cut -d ' ' -f 2 | xargs kill
}
function zipr() {
  zip -r $1.zip $1
}

# From Chris Wanstrath
function pless() {
  pygmentize $1 | less -r
}

repo() {
  cd $(find ~/github -maxdepth 2 -type d | selecta)
}

# Processes
alias tu='top -o cpu' # cpu
alias tm='top -o vsize' # memory

# Mercurial hg
function new-hg() {
  ssh hg@example.com "hg init $1"
  hg clone ssh://hg@example.com/$1
}

# Git
alias ungit="find . -name '.git' -exec rm -rf {} \;"
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gca='git commit -v -a'
# Commit pending changes and quote all args as message
function gg() {
  git commit -v -a -m "$*"
}
alias gco='git checkout'
alias gd='git diff'
alias gdm='git diff master'
alias gl='git pull'
alias gnp="git-notpushed"
alias gp='git push'
alias gst='git status'
alias gt='git status'
alias g='git status'
alias eg='mate .git/config'
# Git clone from GitHub
function gch() {
  git clone git://github.com/$USER/$1.git
}

# Setup a tracking branch from [remote] [branch_name]
function gbt() {
  git branch --track $2 $1/$2 && git checkout $2
}
# Quickly clobber a file and checkout
function grf() {
  rm $1
  git checkout $1
}
# Call from inside an initialized Git repo, with the name of the repo.
function new-git() {
  ssh git@example.com "mkdir $1.git && cd $1.git && git --bare init"
  git remote add origin git@example.com:$1.git
  git push origin master
  git config branch.master.remote origin
  git config branch.master.merge refs/heads/master
  git config push.default current
}

# Text editing
# Emacs
alias em="open -a Emacs"
alias emm="open -a Emacs ."
# Regenerate TAGS file from file arguments
function ct() {
  rm -f TAGS
  etags --append --output=TAGS $*
}

# From http://github.com/suztomo/dotfiles
function rmf(){
  for file in $*
  do
    __rm_single_file $file
  done
}

function __rm_single_file(){
  if ! [ -d ~/.Trash/ ]
    then
    command /bin/mkdir ~/.Trash
  fi

  if ! [ $# -eq 1 ]
    then
    echo "__rm_single_file: 1 argument required but $# passed."
    exit
  fi

  if [ -e $1 ]
    then
    BASENAME=`basename $1`
    NAME=$BASENAME
    COUNT=0
    while [ -e ~/.Trash/$NAME ]
    do
      COUNT=$(($COUNT+1))
      NAME="$BASENAME.$COUNT"
    done

    command /bin/mv $1 ~/.Trash/$NAME
  else
    echo "No such file or directory: $file"
  fi
}

# https://gist.github.com/3310173
function serve(){
  python -m SimpleHTTPServer 8080 &> /dev/null &
  open http://localhost:8080/
}

# Print path, one line at a time
# http://www.cyberciti.biz/faq/howto-print-path-variable/
path (){
  local IFS=:
  eval printf "%s\\\n" \$${1:-PATH}
}

function gittag(){
  local date=`date +%Y-%m-%d.%H-%M`
  git tag -a ${date} -m $1
  git push --tags
}
