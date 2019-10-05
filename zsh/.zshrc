export ZSH="/home/adrian/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
 	git
  	sudo
  	extract
	colored-man-pages
)

source $ZSH/oh-my-zsh.sh

export LANG=de_AT.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR="vim"
else
	export EDITOR="vim"
fi

# Aliases
alias pacman-clean="sudo pacman -Rns $(pacman -Qdtq)"
alias ssh-agent="eval '$(ssh-agent -s)' && ssh-add ~/.ssh/id_rsa"
alias sudocode="sudo code --user-data-dir=/home/adrian/.config/code --extensions-dir=/home/adrian/.config/code -n /"

