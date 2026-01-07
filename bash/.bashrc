# Git Prompt
. $HOME/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
# .bashrc

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; PS1='\[\e[38;5;243m\]\w\[\e[90m\] \[\e[38;5;244m\]|\[\e[0m\] \[\e[38;5;69m\]${PS1_CMD1}\[\e[0m\] \n[\[\e[93m\]\u\[\e[38;5;196m\]@\[\e[38;5;21m\]\h\[\e[0m\]]- \\$ '
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
export PATH="$PATH:$HOME/.local/opt/go/bin"
export PATH="$PATH:$HOME/go/bin"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Aliases
alias vim=nvim
alias gn=goodnight

function goodnight() {
	local flag=""
	OPTIND=1 # Reset OPTIND so the function can be called more than once
	while getopts "k" opt; do
		case ${opt} in
			k) flag='k' 
				;;
			*) flag='n' 
				;;
		esac
	done

	if [[ $flag == 'k' ]]; then
		killall -9 hyprsunset
	else
		hyprsunset -t 2500 &
	fi
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
