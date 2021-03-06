# Path to oh-my-zsh installation.
export ZSH=/Users/lakshay/.oh-my-zsh

# https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="pure"

# Time period to update zsh
export UPDATE_ZSH_DAYS=10

COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"

# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git)

source $ZSH/oh-my-zsh.sh

# ~(0.0)~ ALIASES 
alias lsd="tree -L 1"
alias rmds="find . -name .DS_Store -print0 | xargs -0 git rm --ignore-unmatch"
alias songs="cd ~/Documents/Music"
alias pypi="python setup.py sdist upload"
alias ..="cd .."
alias ...="cd ../.."
alias dr="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias pj="cd ~/Projects"
alias pjr="cd ~/Projects/_Repos"
alias pjf="cd ~/Projects/_Forks"
alias pjp="cd ~/Projects/_Playground/"
alias c="clear"
alias rm="rm -i"
alias myip="curl icanhazip.com"
alias restart="source ~/.zshrc"
alias gpom="git push origin master"
alias wisdom="fortune | cowsay"

# Get weather info
weather(){ curl wttr.in/"$1"; }

# Python 3 work environments
workenv3 () {
    dir=$(pwd);
    cd ~/Documents/environments/python3;
    source bin/activate;
    cd $dir; 
}

# Python 2 work environments
workenv2 () {
    dir=$(pwd);
    cd ~/Documents/environments/python2;
    source bin/activate;
    cd $dir; 
}

# Open browsers
chrome () {
	open -a "Google Chrome" "https://$1"
}

safari () {
	open -a "Safari" "https://$1"
}


# Syntax highlighting
source /Users/lakshay/Documents/Executables/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

SPACESHIP_TIME_SHOW=true

