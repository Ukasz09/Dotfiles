alias pdftext="lowriter --convert-to pdf"
alias listen-ports="sudo lsof -i -P -n | grep LISTEN"
alias path="echo -e ${PATH//:/\\\\n}"
alias sys-serv="systemctl list-unit-files"
alias tardo="tar -czvf"
alias untardo="tar -xzvf"
alias night="dconf write /org/gnome/settings-daemon/plugins/color/night-light-enabled true"
alias day="dconf write /org/gnome/settings-daemon/plugins/color/night-light-enabled false"

# git
alias gitlog="git log --oneline"
alias gitstat="git status -u"

