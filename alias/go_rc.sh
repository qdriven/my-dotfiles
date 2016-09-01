#!/bin/sh

RC_FILE="$HOME/.zshrc"
echo "setting up in $RC_FILE"
echo "alias GOPATH=\"$PATH:/usr/local/go/bin\"" >>$RC_FILE
