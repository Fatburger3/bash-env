source ~/.scripts/vpn-connect.source

btw-server()
{
	cd ~/.btw/server/ &&
	/usr/lib/jvm/java-8-openjdk-amd64/bin/java -Xmx8G -Xms512M -jar minecraft_server.jar nogui
}
set-gaming-keyboard-mode()
{
	setxkbmap -model pc105 -layout us,us -variant ,dvp
}
btw-client()
{
	setxkbmap -model pc105 -layout us,us -variant ,dvp 
	cd /home/carsen/.minecraft &&
	nohup java -Xmx8G -Xms512M -jar launcher.jar & reset
}
github-clone()
{
	if [[ -z $2 ]]; then
		USER=Fatburger3
		REPO=$1
	else
		USER=$1
		REPO=$2
	fi
	git clone "git@github.com:$USER/$REPO"
}

#alias backup-main="sudo rsync -vrWHAXog --exclude={'/backup','/home/carsen/Videos','/dev/*','/proc/*','/sys/*','/tmp/*','/run/*','/mnt/*','/media/*','/lost+found'} --delete / /backup"
alias dir-sync="rsync -xvrWHAXog"
alias install="sudo apt-get install -y"
alias install-apk="/opt/shashlik/bin/shashlik-install"
alias apk="/opt/shashlik/bin/shashlik-run"
alias uninstall="sudo apt-get remove"
alias purge="sudo apt-get purge"
alias clean="sudo apt-get autoremove"
alias ppa="sudo add-apt-repository"
alias sudo="sudo "
alias update="sudo apt-get update"
alias btw="btw-client;btw-server"
alias http-server="cd /home/carsen/http;sudo python3 -m http.server 80"
alias grab-window-class="xprop | grep WM_CLASS | awk '{print $4}'"
alias fresh-install='update;install'
alias ls-atime='ls -l -t --time=atime'
alias upgrade='sudo apt upgrade'
alias reinstall='sudo apt install --reinstall'
alias dir-dump='mv ./* ../;cd ..'
alias commit='git add .;git commit'
alias dump='mv * ../ ;cd ../;'
alias off='sudo shutdown'
alias totem-play='sh ~/.scripts/totem-play.sh'

msg()
{
	[ -z "$DISPLAY" ] && tput bold && echo -n "$1" && tput sgr0 && echo : && echo "$2" || notify-send -t "0" "$1" "$2"
}

install-ppa()
{
	sudo add-apt-repository $1;
	sudo apt update;
	sudo apt install $2;
}
alias copy-ssh-key='xclip -sel clip < ~/.ssh/id_rsa.pub'
alias push='git add .; git commit; git push'
alias pull='git pull'
alias cst205="source ~/Documents/cst205env/bin/activate"
alias u='sudo apt update;sudo apt upgrade'
alias fix-frame-tearing='nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"'
alias phonon='kcmshell5 phonon'
alias lsl="ls -l"
alias flask-remote="~/Documents/flask-remote/start.sh"
alias server-mode="sudo service sddm stop && flask-remote"
alias mount-medialibrary='sshfs 10.0.0.100:/medialibrary/ /medialibrary/'
alias dvorak='setxkbmap -model pc105 -layout us -variant dvorak'
alias dvp='setxkbmap -model pc105 -layout us -variant dvp'
alias helios='ssh 10.0.0.100'
alias ares='ssh 10.0.0.101'
alias aphrodite='ssh 10.0.0.105'
alias gaia='ssh 10.0.0.106'
