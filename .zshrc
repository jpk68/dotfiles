# Created by newuser for 5.9

export ZSH="/usr/share/oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git sudo zsh-autosuggestions zsh-syntax-highlighting colored-man-pages)
source $ZSH/oh-my-zsh.sh

alias cloc="scc"
alias vi="vim"
alias gs="gst"
alias py="python3"

export GCCRS_INCOMPLETE_AND_EXPERIMENTAL_COMPILER_DO_NOT_USE=1

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

export EDITOR="vim"
