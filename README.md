# tmux_tweaks
Huge Thanks to TryHackMe's Remux the TMUX [room](https://tryhackme.com/room/tmuxremux) and LearnLinux.tv

## Setup

```bash
https://github.com/dhaneshsivasamy07/tmux_tweaks/blob/master/install.sh | bash 
```

## Reference
- prefixkeys = "ctrl+a"

```bash
# start a new session
tmux

# rename the session
{prefixkeys} + $

# start a new session with a session name
tmux new -s {session-name}

# Detach a tmux session (close tmux without killing the running task)
{prefixkeys} + d

# list the available tmux sessions
tmux ls

# attach a running tmux session
tmux attach -t {session-name}
tmux a -t P{session-name}

# killing a tmux session
tmux kill-session -t {session-name}

# create a new window
{prefixkeys} + c

# rename a new windows
{prefixkeys} + ,

# load a pane in seperate window
{prefixkeys} + !

# move to next window
{prefixkeys} + n

# move to previous window
{prefixkeys} + p

# move between windows in between sessions
{prefixkeys} + w

# join pane form  a session
{prefixkeys} + : join-pane -s {pane-name}

# set a custom directory to openup for newly opening panes
: attach -c 'path to the dir'
: a -c 'path to the dir'

# perform a horizontal split
{prefixkeys} + \"

# perform a vertical split
{prefixkeys} + %

# navigte between splitted panes
{prefixkeys} + {arrowkeys}

# cycle between splited panes
{prefixkeys} + o

# jump cursor to the last used pane
{prefixkeys} + ;

# kill a pane
{prefixkeys} + x

# move panes around (counter clockwise)
{prefixkeys} + {

# move panes around (clockwise)
{prefixkeys} + }


# automatically adjust the panes in size
{prefixkeys} + {space}

# swap panes manually
: swap-pane -t <target pane> -s <switch with>

# start copy mode
{prefixkeys} + [

# exit copy mode
q

# search the tmux buffer
- Enter copy mode
ctrl + r
{string to be search}
ctrl + r again takes to the next occurance of the string

# copy ouptut from the tmux buffer
- Enter copy mode
- move to the place you wanna copy
ctrl + space
- Arrow keys to navigate / select
alt + w  - saves the highlighted buffer to the clipboard

# check the copied buffer
- once copied from the tmux buffer
{prefixkeys} + #

# paste the copied tmux buffer
{prefixkeys} + ]

# copy the tmux buffer to the system clipboard
# with tmux-yank addon
- Enter the copy mode
- select the thing you wanna copy
{prefixkeys} + y
- Copied to the clipboard
```


### Note:
The conf file is not available by default in the user directory. So you gotta create a new file named ".tmux.conf" in the home directory 
And copy the contents of this config file
Clone tmux-yank plugin from [here](https://github.com/tmux-plugins/tmux-yank)

> change dn@sasusaku in line 45 to your linking

