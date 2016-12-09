#!/bin/sh

RC_FILE="$HOME/.zshrc"
echo "setting up in $RC_FILE for PYTHON"
echo '# python3 setting' >> $RC_FILE
echo 'alias pvm="python3 -m venv "'>> $RC_FILE
echo 'alias pip="pip --trusted-host pypi.douban.com"' >>$RC_FILE
echo 'source ~/.zshrc'
source ~/.zshrc
