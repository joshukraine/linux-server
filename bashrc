# Exports {{{
export EDITOR="vim"
export BUNDLER_EDITOR="vim"
export MANPAGER="less -X" # Don’t clear the screen after quitting a manual page
export TERM="screen-256color"
# }}}


# Aliases {{{

# Vim specific
alias vi="vim"
alias vir="vim -R"

# Jump to quick edits
alias eb='vim ~/.bashrc'
alias ed='vim ~/dotfiles'
alias ev='vim ~/.vimrc'

# General UNIX
alias mv='mv -iv'
alias cp='cp -iv'
alias df='df -h'
alias du='du -h'
alias mkdir='mkdir -pv'
alias src='source ~/.bashrc'
alias pi='ping -Anc 5 8.8.8.8'
alias path='echo -e ${PATH//:/\\n}'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias lsa='ls -lahF'
alias l='ls -lahF'
alias ll='ls -lhF'
alias la='ls -lAhF'
alias lf='ls -F'
alias lh='ls -d .*'

# Tree
alias t2='tree -FL 2'
alias t3='tree -FL 3'
alias t4='tree -FL 4'

alias t2a='tree -FLa 2'
alias t3a='tree -FLa 3'
alias t4a='tree -FLa 4'

# Postgres
alias startpost='sudo /etc/init.d/postgresql start'
alias stoppost='sudo /etc/init.d/postgresql stop'
alias statpost='ps aux | grep postgres'

# }}}


# Git {{{

export GIT_PS1_SHOWDIRTYSTATE=1

if [ -f "$HOME/git-completion.bash" ]; then
  . "$HOME/git-completion.bash"
fi

if [ -f "$HOME/git-prompt.sh" ]; then
  . "$HOME/git-prompt.sh"
fi


# }}}


# Prompt {{{

export PS1='\w$(__git_ps1 " (%s)")\$ '

# }}}


# Tmux {{{
# Makes creating a new tmux session (with a specific name) easier
function tn() {
  tmux new -s $1
}

# Makes attaching to an existing tmux session (with a specific name) easier
function ta() {
  tmux attach -t $1
}

# Makes deleting a tmux session easier
function tk() {
  tmux kill-session -t $1
}

# List tmux sessions
alias tl='tmux ls'

# Create a new session named for current directory, or attach if exists.
alias tna='tmux new-session -As $(basename "$PWD" | tr . -)'

# Source .tmux.conf
alias tsrc="tmux source-file ~/.tmux.conf"

# Kill all tmux sessions
alias tka="tmux ls | cut -d : -f 1 | xargs -I {} tmux kill-session -t {}" # tmux kill all sessions

# }}}


# History {{{
HISTSIZE=20000
SAVEHIST=20000
HISTFILE=~/.bash_history
# }}}


# functions {{{
randpw() {
  < /dev/urandom tr -dc _a-z-0-9 | head -c${1:-8};echo;
}

# Determine size of a file or total size of a directory
# Thank you, Mathias! https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.functions
function fs() {
	if du -b /dev/null > /dev/null 2>&1; then
		local arg=-sbh;
	else
		local arg=-sh;
	fi
	if [[ -n "$@" ]]; then
		du $arg -- "$@";
	else
		du $arg .[^.]* *;
	fi;
}

# }}}


# Include local settings {{{
[[ -f ~/.bashrc.local ]] && source ~/.bashrc.local
# }}}
