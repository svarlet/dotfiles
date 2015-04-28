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

a mplayer="mplayer -msgcolor"

export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export FLASH_PLAYER_HOME="/Users/plumbee/Plumbee/Tools/Flash Player Debugger.app/Contents/MacOS"
export M2_HOME=/opt/local/share/java/apache-maven-3.1.1/
export AIR_HOME=/Users/plumbee/Plumbee/Tools/AIRSDK_16/bin/

export PATH=$JAVA_HOME:$FLASH_PLAYER_HOME:$AIR_HOME
export PATH=/usr/local/bin/:/usr/bin:/usr/sbin:/bin:/sbin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

export MANPATH=/usr/bin/manpath:/opt/local/share/man
export MACOSX_DEPLOYMENT_TARGET=10.8
export EDITOR="vim"
export MAVEN_OPTS="-Xmx1024m -Xms256m"

export CLICOLOR=true
export LSCOLORS="Hxfxxxxxgxxxxxxxxxxxxx"
export LS_COLORS=$LSCOLORS

HISTFILE=~/.history
HISTSIZE=1000
SAVEHIST=1000

source ~/.zsh/git-prompt/zshrc.sh
source ~/set-env-with-my-amazon-credentials.sh

autoload -U colors && colors
host_color="green"
path_color="yellow"

#retour="%{$fg[%(?.green.red)]%}[%(?.Last Exit: OK.Last Exit: KO)]"
datetimeNow="%D %T"

host="%{$fg_no_bold[$host_color]%}[%m]"
cpath="%{$fg[$path_color]%}%2~"
end="%{$reset_color%}"

RPS1="$datetimeNow$end"

PROMPT='$host $cpath$end $(git_super_status)$end> '

unset MANPATH
clear
