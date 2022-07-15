#!/bin/bash

cd ~/
git clone https://github.com/dhaneshsivasamy07/tmux_tweaks
sudo chown $(whoami) /opt
cd /opt/
git clone https://github.com/tmux-plugins/tmux-yank 2>/dev/null
cp ~/tmux_tweaks/mytmux.conf ~/.tmux.conf
mkdir ~/.tmux
cp -r ~/tmux_tweaks/files/* ~/.tmux
chmod +x ~/.tmux/*
cp ~/tmux_tweaks/opt_README.md /opt/README.md
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
rm -rf ~/tmux_tweaks
echo "Done :)"

