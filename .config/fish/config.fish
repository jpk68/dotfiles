set -g fish_greeting

alias cloc="scc"
alias vi="vim"
alias py="python3"
alias maek="make"

alias gds="git diff --staged"
alias gst="git status"
alias glg="git log"
alias glo="git log --oneline"

set -gx GCCRS_INCOMPLETE_AND_EXPERIMENTAL_COMPILER_DO_NOT_USE 1
set -gx EDITOR "vim"

fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/bin $HOME/.local/bin
