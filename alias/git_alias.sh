alias gs='git show --pretty=oneline'
alias g_pu='git push origin master -u'
alias gpod='git push origin dev '
alias g_pl='git pull'
alias g_c="git status && git add . && git commit . -m $1"
alias g_url="cat .git/config | grep url  | awk '{print \$3}'"
alias g_e="git config user.email \"$1\""
alias g_n="git config user.name \"$2\""
