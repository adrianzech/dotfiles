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

connect() {
	ssh adrian@192.168.178."$1"
}

servers() {
	echo "120 - Reverse Proxy"
	echo "121 - OpenVPN"
	echo "122 - PI-hole"
	echo "123 - Monitoring"
	echo "124 - Gotify"
	echo "130 - Webserver"
	echo "131 - Nextcloud"
	echo "132 - Wiki"
	echo "133 - phpMyAdmin"
	echo "134 - Paperless"
	echo "135 - Heimdall"
	echo "136 - MinIO"
	echo "140 - Plex"
	echo "141 - Sabnzbd"
	echo "142 - Deluge"
	echo "143 - Sonarr"
	echo "144 - Radarr"
	echo "145 - Ombi"
	echo "146 - Calibre"
	echo "150 - Minecraft"
	echo "151 - 7 Days to Die"
}

winreboot() {
	sudo /usr/sbin/efibootmgr --bootnext 0
	sudo /usr/bin/systemctl reboot
}

runsrvcmd() {
	pssh -h $1 -A -P -I < $2
}
