#!/bin/bash

cd ~/
git clone https://github.com/dhaneshsivasamy07/tmux_tweaks
sudo chown $(whoami) /opt
cd /opt/
git clone https://github.com/tmux-plugins/tmux-yank 2>/dev/null
cp ~/tmux_tweaks/tmux.conf ~/.tmux.conf
mkdir ~/.tmux
cp -r ~/tmux_tweaks/files/* ~/.tmux
cp ~/tmux_tweaks/opt_README.md /opt/README.md
echo "Done :)"
