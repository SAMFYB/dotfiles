# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="pi"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
# git
# rand-quote
# vi-mode
# web-search
# wd
# tmux
# fast-syntax-highlighting
  git-open
# zsh-autosuggestions
)

ZSH_DISABLE_COMPFIX="true"

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Export existing paths
source ~/.zsh+path

# alias dragon=dragon
# dragon () {
#   tput setaf 166
#   cowsay -f dragon SCS!
#   tput sgr0
# }

# Extra sudo confirmation
alias sudo=confirmsudo
confirmsudo () {
  tput setaf 160
  read "CONFIRM?sudo (yes/no) "
  if [[ "$CONFIRM" == yes ]]
  then
    tput sgr0
    \sudo "$@"
  else
    echo 'Abort'
    tput sgr0
  fi
}

# (zsh hook) Changing Path of Working Directory
chpwd () {
  if [[ $(pwd) != $HOME ]]
  then
    ls
  fi
}

# (zsh hook) Periodic
# export PERIOD=300
# periodic () {
#   date +"%H:%M"
# }

alias rm='rm -v'
alias mv='mv -v'
alias cp='cp -v'

alias gb='git checkout -b'
alias gc='git add . ; git commit -m'
alias gcout='git checkout'
alias gcln='git clone'
alias gd=gd_with_status
alias gg='git log --graph --oneline --decorate'
alias gl='git pull'
alias go='git open'
alias gp='git push'
alias gr='git remote -v'
alias gs='git status'

gd_with_status () {
  git --no-pager diff
  tput setaf 250
  echo '----------------------------------------'
  tput sgr0
  git status
}

alias sml='rlwrap sml'
alias gdb='rlwrap gdb'
alias python='rlwrap python'
alias python3='rlwrap python3'
alias pip='python3 -m pip'

alias top=htop
alias untar='tar -xvf'
alias note='vim ~/notes'

source ~/.zsh+more

# Overwrite theme prompt
# autoload -U promptinit; promptinit
# prompt pure
# zstyle :prompt:pure:path color 39
# zstyle :prompt:pure:git:branch color 41
# zstyle :prompt:pure:prompt:success color 103
# zstyle :prompt:pure:prompt:error color 190
