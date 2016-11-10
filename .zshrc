autoload -U compinit
compinit
fpath=(~/zfunc $fpath)

alias a="alias"
a rm="rm -i"
a ls="ls -FG"
a la="ls -laFG"

a clean="rm -f *~ && rm -f '#*'"
a notify="terminal-notifier -message "

a gs="git status"
a gcam="git commit -am "
a gprgp="git pull --rebase; git push"
a glog="git log --stat --graph"

a mplayer="mplayer -msgcolor"
a vim='mvim -v'
a vi='mvim -v'

HISTFILE=~/.history
HISTSIZE=1000
SAVEHIST=1000

source ~/.zsh/git-prompt/zshrc.sh

autoload -U colors && colors
host_color="green"
path_color="yellow"

#retour="%{$fg[%(?.green.red)]%}[%(?.Last Exit: OK.Last Exit: KO)]"
#datetimeNow="%D %T"

host="%{$fg_no_bold[$host_color]%}[%m]"
cpath="%{$fg[$path_color]%}%2~"
end="%{$reset_color%}"

#RPS1="$datetimeNow$end"

PROMPT='$host $cpath$end $(git_super_status)$end> '

clear
cd
