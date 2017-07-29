#############################################################################################
###########                                                                       ###########
######                                                                                 ######
##                                                                                         ##
# \author       Luciano Augusto Kruk                                                        #
# \web          www.kruk.eng.br                                                             #
#                                                                                           #
# \description  This script provides some useful functions to bash. It is worth to make it  #
#               system-wide, like /etc/bash.bashrc, with this line:                         #
#                   source /PATH-TO-THIS-SCRIPT                                             #
#                                                                                           #
# \copyright    Please keep this head when you distribute this script.                      #
##                                                                                         ##
######                                                                                 ######
###########                                                                       ###########
#############################################################################################


#############################################################################################
###########                                                                       ###########
######                                                                                 ######
##                                                                                          #
# \brief Returns a string with time and the current branch (git) in the current dir. This   #
#        function is used in the preparation of the PS1 variable. For example:              #
#        "06:22 -- master" or just "06:22" if the dir is not under git version control.     #
#                                                                                           #
# \author       Luciano Augusto Kruk                                                        #
# \web          www.kruk.eng.br                                                             #
# \copyright    Please keep this head when you distribute this script.                      #
##                                                                                         ##
######                                                                                 ######
###########                                                                       ###########
#############################################################################################
function fn_gitbranch 
{
	if [ `git branch &> /dev/null; echo $?` -eq 0 ]; then 
		echo "`date +%H:%M` -- `git branch | grep "^\*" | sed 's/^..//'`"
	else
		echo "`date +%H:%M`"
	fi
}

#############################################################################################
###########                                                                       ###########
######                                                                                 ######
##                                                                                          #
# \brief The PS1 variable.                                                                  #
#                                                                                           #
# \author       Luciano Augusto Kruk                                                        #
# \web          www.kruk.eng.br                                                             #
# \copyright    Please keep this head when you distribute this script.                      #
##                                                                                         ##
######                                                                                 ######
###########                                                                       ###########
#############################################################################################
if [ "$USER" = "root" ]
then
	PS1=$'\[\e[31;1m\]\xe2\x94\x8c\xe2\x94\x80(\[\e[31;1m\]\u\[\e[36;1m\]@\[\e[33;1m\]\h\[\e[31;1m\])\xe2\x94\x80\xe2\x94\x80(\[\e[0;37m\]\w\[\e[31;1m\])\[\e[34;1m\]\xe2\x94\x80\xe2\x94\x80(`fn_gitbranch`)\n\[\e[31;1m\]\xe2\x94\x94\xe2\x94\x80\\[\e[36;1m\]>>\[\e[0m\] # '  
else
	PS1=$'\[\e[32;1m\]\xe2\x94\x8c\xe2\x94\x80(\[\e[32;1m\]\u\[\e[36;1m\]@\[\e[33;1m\]\h\[\e[32;1m\])\xe2\x94\x80\xe2\x94\x80(\[\e[0;37m\]\w\[\e[32;1m\])\[\e[34;1m\]\xe2\x94\x80\xe2\x94\x80(`fn_gitbranch`)\n\[\e[32;1m\]\xe2\x94\x94\xe2\x94\x80\\[\e[36;1m\]>>\[\e[0m\] $ '  
fi

#############################################################################################
###########                                                                       ###########
######                                                                                 ######
##                                                                                          #
# \brief       General setup.                                                               #
#                                                                                           #
# \author       Luciano Augusto Kruk                                                        #
# \web          www.kruk.eng.br                                                             #
# \copyright    Please keep this head when you distribute this script.                      #
##                                                                                         ##
######                                                                                 ######
###########                                                                       ###########
#############################################################################################
# Variaveis do HISTORY
readonly HISTSIZE=1000 > /dev/null 2>&1
readonly HISTFILESIZE=2000 > /dev/null 2>&1
readonly HISTTIMEFORMAT="%d/%m/%Y-%T-> " > /dev/null 2>&1
export command_oriented_history=1 #Comandos com mais de uma linha sao guardados inteiros no history
# no duplicate lines in history...
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# the best editor:
export EDITOR="vim"

# Ativa correcao automatica do path digitado no comando cd
#shopt -s cdspell

# Ativa reconhecimento de padroes
#shopt -s extglob

# Ativa expansao do * para arquivos invisiveis
#shopt -s dotglob

# Adiciona ao history file, sem sobrescreve-lo:
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Alias definitions, if aliases are in a separated file:
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features:
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

#Configura o terminal para suportar 256 cores
# if [[ "${TERM}" != "screen" ]]
# then
# 	export TERM="screen-256color"
# fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

#############################################################################################
###########                                                                       ###########
######                                                                                 ######
##                                                                                          #
# \brief Aliases.                                                                           #
#                                                                                           #
# \author       Luciano Augusto Kruk                                                        #
# \web          www.kruk.eng.br                                                             #
# \copyright    Please keep this head when you distribute this script.                      #
##                                                                                         ##
######                                                                                 ######
###########                                                                       ###########
#############################################################################################

alias ll='ls -l'
alias la='ls -al'
alias grep='grep --color=auto'
alias top='top -Hd1'
alias ta='sudo tail -f /var/log/syslog'
alias octave='octave -q'
alias vv='git branch -vv'
alias avv='git branch -avv'
alias mpirun='LD_PRELOAD="/home/local/lib/libmpi.so $LD_PRELOAD" mpirun'
alias pp='ps faux | less'

#############################################################################################
###########                                                                       ###########
######                                                                                 ######
##                                                                                          #
# \brief Invokes 'sshfs' with relevant flags to stabilize connection.                       #
#                                                                                           #
# \author       Luciano Augusto Kruk                                                        #
# \web          www.kruk.eng.br                                                             #
# \copyright    Please keep this head when you distribute this script.                      #
##                                                                                         ##
######                                                                                 ######
###########                                                                       ###########
#############################################################################################

function sudo-sshfs ()
{
	[ $# -eq 0 ] && { echo "sudo-sshfs [options] [user@]host:[dir] mountpoint"; return; }
	[ "`which sshfs`X" = X ] && { echo "no sshfs binary found in path"; return; }

	args=
	while [ $# -gt 0 ]; do
		args="$args $1"
		shift
	done
	#echo "args = $args"
	sudo sshfs $args -o reconnect,workaround=truncate:rename,allow_other
}

#############################################################################################
###########                                                                       ###########
######                                                                                 ######
##                                                                                          #
# \brief Calls 'ps' and filters the output against a provided regex.                        #
#                                                                                           #
# \author       Luciano Augusto Kruk                                                        #
# \web          www.kruk.eng.br                                                             #
# \copyright    Please keep this head when you distribute this script.                      #
##                                                                                         ##
######                                                                                 ######
###########                                                                       ###########
#############################################################################################

function pf() { ps -e --format "%p %a" | grep "$1"; }

#############################################################################################
###########                                                                       ###########
######                                                                                 ######
##                                                                                          #
# \brief Returns the maximum value of list of numbers.                                      #
#                                                                                           #
# \author       Luciano Augusto Kruk                                                        #
# \web          www.kruk.eng.br                                                             #
# \copyright    Please keep this head when you distribute this script.                      #
##                                                                                         ##
######                                                                                 ######
###########                                                                       ###########
#############################################################################################

function fn_max ()
{
	max=$1
	shift

	while [ $# -gt -0 ]; \
	do
		[ $max -lt $1 ] && max=$1;
		shift
	done
	echo $max
}

#############################################################################################
###########                                                                       ###########
######                                                                                 ######
##                                                                                          #
# \brief Nicely displays branches and tags (git) from current project.                      #
#                                                                                           #
# \author       Luciano Augusto Kruk                                                        #
# \web          www.kruk.eng.br                                                             #
# \copyright    Please keep this head when you distribute this script.                      #
##                                                                                         ##
######                                                                                 ######
###########                                                                       ###########
#############################################################################################

function avt ()
{
	branches="+++++++++++++++++++++++++++++++++++++=BRANCHES"
	tags____="+++++++++++++++++++++++++++++++++++++++=TAGS"
	a=`echo $branches | wc -L`
	b=`echo $tags____ | wc -L`
	c=`git branch -avv | wc -L`
	d=`git tag -n1 | wc -L`
	nb=`fn_max $a $b $c $d`
	newb=`printf '%s=%*s' "$branches" $((nb-a)) '' | tr '+= ' '- -'`
	newt=`printf '%s=%*s' "$tags____" $((nb-b)) '' | tr '+= ' '- -'`

	echo $newb
	git branch -avv
	echo $newt
	git tag -n1
	echo "`echo $newb | sed 's/./-/g'`"
}

#############################################################################################
###########                                                                       ###########
######                                                                                 ######
##                                                                                          #
# \brief  Calls 'dict', but the output is piped to 'less'.
#                                                                                           #
# \author       Luciano Augusto Kruk                                                        #
# \web          www.kruk.eng.br                                                             #
# \copyright    Please keep this head when you distribute this script.                      #
##                                                                                         ##
######                                                                                 ######
###########                                                                       ###########
#############################################################################################

function ledict ()
{
	[ $# -eq 0 ] && { echo "ledict <word>"; return; }
	dict "$1" | less
}

#############################################################################################
###########                                                                       ###########
######                                                                                 ######
##                                                                                          #
# \brief  [on-going] A set of selected relevant information about the system status. For    #
#           example, the status of the managed disks arrays (/proc/mdstat).                 #
#                                                                                           #
# \author       Luciano Augusto Kruk                                                        #
# \web          www.kruk.eng.br                                                             #
# \copyright    Please keep this head when you distribute this script.                      #
##                                                                                         ##
######                                                                                 ######
###########                                                                       ###########
#############################################################################################

function fn_sysstatus
{
    cat /proc/mdstat | sed -n '/^[[:graph:]]\+.*:/{s/[[:blank:]]\+.*$//;p}' | \
        while read dev; do
            if [ `cat /proc/partitions | grep -c $dev` -gt 0 ]; then
                cat /proc/mdstat | nl -b a | grep "$dev.*:" | sed 's/^[[:blank:]]*\([0-9]\+\).*$/\1/' | \
                    xargs -In expr n + 1 | \
                    while read n; do
                        txt=`cat /proc/mdstat | sed -n ${n}p | \grep -o "\[[^0-9]\+\]"`
                        echo "$dev : $txt"
                    done
            fi
        done
}

#############################################################################################
###########                                                                       ###########
######                                                                                 ######
##                                                                                          #
# \brief  Show the status at each new bash terminal.                                        #
#                                                                                           #
# \author       Luciano Augusto Kruk                                                        #
# \web          www.kruk.eng.br                                                             #
# \copyright    Please keep this head when you distribute this script.                      #
##                                                                                         ##
######                                                                                 ######
###########                                                                       ###########
#############################################################################################

fn_sysstatus

#############################################################################################
