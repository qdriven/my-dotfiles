#! /bin/sh

echo "setup visual studio code"
cat << EOF >> ~/.zshrc
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

sh setup-jdk.sh
sh setup-golang.sh

source ~/.zshrc

## setup python for anacoda

echo "setup anoconda"
cat << EOF >> ~/.zshrc
# Add Anoconda3 (code)
export PATH="\$PATH:/opt/anaconda3/bin"
EOF

## install docker-compose
sudo pip3 install docker-compose

## install ansible
sudo pip3 install ansible
