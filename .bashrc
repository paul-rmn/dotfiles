#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '




# My own aliases - by Paul

alias pac-install="sudo pacman -S"
alias pac-search="sudo pacman -Ss"
alias pac-remove="sudo pacman -R"
alias ll="ls -lh"
alias la="ls -lha"
alias mv="mv -i"
alias :q="exit"
alias vrc="vim $HOME/.vimrc"
alias brc="vim $HOME/.bashrc"
alias zrc="vim $HOME/.config/zathura/zathurarc"
alias i3c="vim $HOME/.config/i3/config"
alias fsizes="du -hd1"
alias todo="vim $HOME/Documentos/i3-life/TODO"
alias btc="bluetoothctl"
alias s!="sudo !!"
alias vim="vim --servername VIM"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

