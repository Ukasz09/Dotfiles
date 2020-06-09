# aliases
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

# localizations
alias githubdir="cd /home/ukasz09/Dokumenty/Dev/GitHub"
alias tmpdir="cd /home/ukasz09/Dokumenty/TMP"
alias semdir="cd /home/ukasz09/Dokumenty/Semestr_IV"

# git
alias gitlog="git log --oneline"
alias gitstat="git status -u"

function gitpush() { git push origin "$(git branch | grep -e "^[\*]" | awk '{print $2}')"; }

function gitpull() { git pull origin "$(git branch | grep -e "^[\*]" | awk '{print $2}')"; }

