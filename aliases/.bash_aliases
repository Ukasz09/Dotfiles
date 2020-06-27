alias pdftext="lowriter --convert-to pdf"
alias listen-ports="sudo lsof -i -P -n | grep LISTEN"
alias path="echo -e ${PATH//:/\\\\n}"
alias sys-serv="systemctl list-unit-files"
alias tardo="tar -czvf"
alias untardo="tar -xzvf"
alias night="dconf write /org/gnome/settings-daemon/plugins/color/night-light-enabled true"
alias day="dconf write /org/gnome/settings-daemon/plugins/color/night-light-enabled false"
alias cpwd="pwd | xclip -sel c"
alias copy="xclip -sel c"
alias ihist="history | sort -r | fzf | sed -e 's/[0-9 ]\+//'"
alias ytmp3="cd ~/Muzyka/YouTubeAudio && youtube-dl -x --audio-format mp3 --audio-quality 0"
alias yt="cd ~/Wideo/YouTube && youtube-dl --write-sub --sub-lang en "

# localizations
alias githubdir="cd /home/ukasz09/Dokumenty/Dev/GitHub"
alias tmpdir="cd /home/ukasz09/Dokumenty/TMP"
alias semdir="cd /home/ukasz09/Dokumenty/Semestr_IV"

alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias treeless="tree -C | less -R"

# git
alias fgitlog="git log --graph --pretty=format:'%C(magenta)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) %C(cyan)<%an>%Creset' --abbrev-commit"
alias gitlog="git log --pretty --oneline --all --graph"
alias fgitstat="git status -u"
alias gitstat="git status -s"
alias gitcom="git commit -m"
alias gitadd="git add ."

function gitpush() { git push origin "$(git branch | grep -e "^[\*]" | awk '{print $2}')"; }

function gitpull() { git pull origin "$(git branch | grep -e "^[\*]" | awk '{print $2}')"; }

# git status bar in bash
source ~/gitstatus/gitstatus.prompt.sh
