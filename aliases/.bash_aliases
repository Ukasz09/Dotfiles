export LS_COLORS="$(vivid generate ayu)"
alias pdftext="lowriter --convert-to pdf"
alias list-ports="sudo lsof -i -P -n | grep LISTEN"
alias path="echo -e ${PATH//:/\\\\n}"
alias fshow-services="systemctl list-unit-files"
alias show-services="sudo initctl list"
alias tardo="tar -czvf"
alias untardo="tar -xzvf"
alias night="dconf write /org/gnome/settings-daemon/plugins/color/night-light-enabled true"
alias day="dconf write /org/gnome/settings-daemon/plugins/color/night-light-enabled false"
alias cpwd="pwd | tr -d '\n' | xclip -sel c"
alias copy="tr -d '\n' | xclip -sel c"
alias ihist="history | sort -r | fzf | sed -e 's/[0-9 ]\+//'"
alias ytmp3="cd ~/Music/Downloads && youtube-dl -x --audio-format mp3 --audio-quality 0"
alias yt="cd ~/Videos/Downloads && youtube-dl --write-sub --sub-lang en "
alias please="sudo"
alias sublime="/opt/sublime_text/sublime_text"
alias l="ls -CFA"
alias ll='ls -alFh'
alias df="df -h"
alias rot13="tr a-zA-Z n-za-mN-ZA-M"
alias docker="sudo docker"
alias list-emulators="~/Android/Sdk/tools/emulator -list-avds"
alias run-emulator="~/Android/Sdk/emulator/emulator -avd"

function up(){
sudo apt-get update
sudo apt-get upgrade -y
sudo snap refresh
sudo flatpak update
}

# localizations
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias treeless="tree -C | less -R"
alias g="goto"

function n(){ nautilus "${1}" &}

# git
alias fgitlog="git log --graph --pretty=format:'%C(magenta)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) %C(cyan)<%an>%Creset' --abbrev-commit"
alias gitlog="git log --pretty --oneline --all --graph"
alias fgitstat="git status -u"
alias gitstat="git status -s"
alias gitcom="git commit -m"
alias gitadd="git add ."
alias gitunadd="git reset"
alias gitdiff="git diff"

function gitpush() { git push origin "$(git branch | grep -e "^[\*]" | awk '{print $2}')"; }

function gitpull() { git pull origin "$(git branch | grep -e "^[\*]" | awk '{print $2}')"; }

# git status bar in bash
source ~/gitstatus/gitstatus.prompt.sh

