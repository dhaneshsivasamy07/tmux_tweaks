#!/bin/bash

cd ~/
git clone https://github.com/cyberwr3nch/tmux_tweaks
cd /opt/
git clone https://github.com/tmux-plugins/tmux-yank
cp ~/tmux_tweaks/tmux.conf ~/.tmux.conf
mkdir ~/.tmux
cp -r ~/tmux_tweaks/files/* ~/.tmux
echo "Done :)"
