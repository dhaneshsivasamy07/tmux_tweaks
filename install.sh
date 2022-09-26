#!/bin/bash

cd ~/
git clone https://github.com/dhaneshsivasamy07/tmux_tweaks
cp ~/tmux_tweaks/mytmux.conf ~/.tmux.conf
mkdir ~/.tmux
cp -r ~/tmux_tweaks/files/* ~/.tmux
chmod +x ~/.tmux/*
cp ~/tmux_tweaks/opt_README.md /opt/README.md
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
rm -rf ~/tmux_tweaks
echo "Done :)"

echo "***************************************************************"
echo "Please install the tmux plugins with ctrl+A shift+i"
echo "***************************************************************"
