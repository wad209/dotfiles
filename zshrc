# Original Author:       mutantmonkey (https://github.com/mutantmonkey)
# Modified by:           wad209
# Last change:           2023-01-02
# I blatetly stole this, and it's been modified fairly heavily.

# History {{{

HISTFILE=~/.zsh_history
HISTSIZE=9223372036854775807
SAVEHIST=9223372036854775807
setopt appendhistory
setopt share_history

# }}}

# Key bindings {{{

bindkey -v

bindkey '^[[A'  vi-up-line-or-history
bindkey '^[[B'  vi-down-line-or-history

# }}}

# Auto completion {{{

zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit

unsetopt menu_complete # do not autoselect the first completion entry
unsetopt flowcontrol
setopt auto_menu # show completion menu on succesive tab press
setopt complete_in_word
setopt always_to_end

WORDCHARS=''

zmodload -i zsh/complist

## case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
unset CASE_SENSITIVE
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zstyle ':completion:*' list-colors ''

# should this be in keybindings?
bindkey -M menuselect '^o' accept-and-infer-next-history

zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u $(whoami) -o pid,user,comm -w -w"

# disable named-directories autocompletion
#zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories
#cdpath=(.)

# allow approximate
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# alias mosh to ssh completions
compdef mosh=ssh
compdef mosh4=mosh

type kubectl >/dev/null && source <(kubectl completion zsh)

# }}}

# Terminal colors {{{

# directory colors
if [ "$TERM" != "dumb" ]; then
    # grep color
    export GREP_COLORS="mt=1;33"
    alias grep='grep --color=auto'
fi

# Zenburn colors for console
if [ "$TERM" = "linux" ]; then
    echo -en "\e]P03f3f3f" # zenburn black (normal black)
    echo -en "\e]P8709080" # bright-black  (darkgrey)
    echo -en "\e]P1705050" # red           (darkred)
    echo -en "\e]P9dca3a3" # bright-red    (red)
    echo -en "\e]P260b48a" # green         (darkgreen)
    echo -en "\e]PAc3bf9f" # bright-green  (green)
    echo -en "\e]P3dfaf8f" # yellow        (brown)
    echo -en "\e]PBf0dfaf" # bright-yellow (yellow)
    echo -en "\e]P4506070" # blue          (darkblue)
    echo -en "\e]PC94bff3" # bright-blue   (blue)
    echo -en "\e]P5dc8cc3" # purple        (darkmagenta)
    echo -en "\e]PDec93d3" # bright-purple (magenta)
    echo -en "\e]P68cd0d3" # cyan          (darkcyan)
    echo -en "\e]PE93e0e3" # bright-cyan   (cyan)
    echo -en "\e]P7dcdccc" # white         (lightgrey)
    echo -en "\e]PFffffff" # bright-white  (white)
fi

# }}}

# Prompt {{{

MAIN_COLOR=$'%{\e[1;30m%}'
USER_COLOR=$'%{\e[1;32m%}'
DIR_COLOR=$'%{\e[0;37m%}'
RESET_COLOR=$'%{\e[0;00m%}'

export PROMPT="$MAIN_COLOR($USER_COLOR%n@%m$MAIN_COLOR|$DIR_COLOR%~$MAIN_COLOR)$RESET_COLOR%# "
export PROMPT2="$MAIN_COLOR... $RESET_COLOR"

# }}}

# Variables {{{
export BROWSER=firefox
export EDITOR=nvim
export PAGER=less
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# MANPAGER="nvim -c 'set ft=man' -"
export LESS="-R -iMx4"
export MPD_HOST="192.168.1.217"
export LEDGER_FILE=~/.hledger/hledger.journal

# Java settings
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=lcd_vrgb -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"

if [[ "$TERM" == "xterm" ]]; then
    export TERM=xterm-256color
fi

# MPD
# }}}

# Aliases {{{

alias net_connected='sudo lsof -i -n | grep -v LISTEN'
alias net_listening='sudo lsof -i -n | grep LISTEN'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gits="git status -sb"
alias vim='nvim'
if [[ `uname` == "Darwin" ]]; then
    alias ssh='ssh -I /opt/homebrew/lib/libykcs11.dylib'
fi
alias ls='eza --icons --classify --group-directories-first -F'
alias tree='eza --tree'
alias cat='bat --theme="OneHalfDark"'
alias du='dua'
alias find='fd'
alias cp='xcp'
alias grep='rg'

# }}}

PATH=/usr/local/texlive/2014/bin/x86_64-linux:$HOME/.local/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

eval "$(starship init zsh)"

source "$HOME/.cargo/env"
