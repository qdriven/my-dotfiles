bin=$HOME/bin
cwd=$(pwd)

if [ ! -d $bin ]; then
    mkdir $bin
fi

echo "Installing tmuxen to $bin"
ln -sf $cwd/tmuxen $bin/tmuxen

echo "Symlinking _tmux.conf to $HOME/.tmux.conf"
ln -sf $cwd/_tmux.conf $HOME/.tmux.conf

exit 0
