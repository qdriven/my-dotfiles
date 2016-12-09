
SCRIPT_PATH=$PWD
# set alias
echo "alias cnpm=\"npm --registry=https://registry.npm.taobao.org\"" >> ~/.zshrc 
echo "alias cnpm=\"npm --registry=https://registry.npm.taobao.org\"" >> ~/.config/fish/config.fish

# set git 
echo "alias gl=git clone -depth=1" >>~/.zshrc
echo "alias gl=git clone -depth=1" >>~/.config/fish/config.fish

# set pip 
echo "alias pip=\"pip --trusted-host pypi.douban.com\""  >>~/.zshrc
echo "alias pip=\"pip --trusted-host pypi.douban.com\""  >>~/.config/fish/config.fish

# set python3
echo "alias pvm = \"python3 -m venv\"" >> ~/.zshrc 
echo "alias pvm = \"python3 -m venv\"" >> ~/.config/fish/config.fish

echo "alias flush_dns=\"sudo killall -HUP mDNSResponder\""

