# tmux_tweaks
Huge Thanks to TryHackMe's Remux the TMUX [room](https://tryhackme.com/room/tmuxremux) and LearnLinux.tv

## Setup

```bash
curl -s https://raw.githubusercontent.com/dhaneshsivasamy07/tmux_tweaks/master/install.sh | bash 
```

## Note
If you want to edit the color coding used in this tmux config, use the following image to change the color codes
![clrcodes](https://github.com/dhaneshsivasamy07/tmux_tweaks/blob/master/files/tmux_colors.png)

## Reference

```bash
# Most used
# start a new session
tmux

# create a new window
{prefixkeys} + c

# set the home directory of a tmux to current working directory
{prefixkeys} + q

# close a window with its panes
{prefixkeys} + w

# kill a tmux session
{prefixkeys} + k

# perform a horizontal split
{prefixkeys} + h

# perform a vertical split
{prefixkeys} + v
````

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

# set the home directory of a tmux to current working directory
{prefixkeys} + q

# rename a new windows
{prefixkeys} + ,

# load a pane in seperate window
{prefixkeys} + !

# move to next window
{prefixkeys} + n

# move to previous window
{prefixkeys} + p

# close a window
{prefixkeys} + w

# join pane form  a session
{prefixkeys} + : join-pane -s {pane-name}
{prefixkeys} + j

# set a custom directory to openup for newly opening panes
: attach -c 'path to the dir'
: a -c 'path to the dir'

# perform a horizontal split
{prefixkeys} + h

# perform a vertical split
{prefixkeys} + v

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
{prefixkeys} + s

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


