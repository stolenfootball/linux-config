# .zshrc for perditus

# OPTIONS
setopt NO_NOTIFY
setopt NO_HUP
setopt LOCAL_OPTIONS
setopt PROMPT_SUBST
setopt CSH_NULL_GLOB
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS
setopt NO_HIST_BEEP
setopt NO_BEEP
setopt CD_ABLE_VARS
setopt EXTENDED_GLOB
setopt MULTIOS
setopt CORRECT
setopt AUTO_LIST
setopt AUTO_MENU

# FUNCTIONS
autoload -U compinit
compinit

# PROMPT
autoload -Uz colors && colors
PS1="[%{$fg[green]%}%n%{$reset_color%}@%{$fg_bold[red]%}%m %{$fg_no_bold[yellow]%}%1~%{$reset_color%}]%}%# "

# HISTORY SETTINGS
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.prompt_history

# ALIASES
if [[ -r ~/.aliasrc ]]; then
    source ~/.aliasrc
fi

# ENVIRONMENT VARIABLES
if [[ -r ~/.envrc ]]; then
    source ~/.envrc
fi

# PATH
typeset -U path
path=(/tools/bin /bin /usr/bin ~/bin)

# STARTUP FUNCTIONS
eval "$(dircolors ~/.dircolors)" 

