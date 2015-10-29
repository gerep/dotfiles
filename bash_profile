#
# ~/.bash_profile
#

######################################################
# GLOBAL DEFINITIONS
######################################################

source ~/.profile

# Fuzzyfinder https://github.com/junegunn/fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

if [ -f /etc/bash_completion ]; then
	    . /etc/bash_completion
fi

######################################################
# PERSONAL ALIASES
######################################################

### Folders
alias l='ls --color -lh'
alias ll='ls --color -alh'
alias ls='ls --color'

## Aliases
alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

######################################################
# FUNCTIONS
######################################################
PS1="\[$(tput bold)\]\\W \\\$\n\[$(tput sgr0)\]"
