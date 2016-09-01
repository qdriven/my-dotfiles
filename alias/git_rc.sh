#!/bin/sh
# export alias
RC_FILE="$HOME/.zshrc"
CURRENT=$HOME/dotfiles
echo "setting up in $RC_FILE for GIT"
echo 'alias cat_git_url="cat .git/config | grep url"' >> $RC_FILE
echo "alias push-git=\"sh $CURRENT/scripts/submit_git.sh\"" >>$RC_FILE
