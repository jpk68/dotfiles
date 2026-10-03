set -g fish_greeting

set -gx EDITOR "vim"

alias vi="vim"
alias py="python3"

alias gdf="git diff"
alias gds="git diff --staged"
alias gst="git status"
alias glg="git log"
alias glo="git log --oneline"
alias gbv="git branch -v"
alias grv="git remote -v"

alias gs="gst"

set -gx GCCRS_INCOMPLETE_AND_EXPERIMENTAL_COMPILER_DO_NOT_USE 1

fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/bin $HOME/.local/bin
