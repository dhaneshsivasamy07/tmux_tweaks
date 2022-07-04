#!/bin/bash

## INFO: Incase of debugging is needed
## Open vim --> :3,$s/^#//g

## Arguments
## DEBUG: passed arguemnts
#echo Provided Arguement: $#;

machine=$1
ip=$2

# Function
dnoscp(){
    echo '[*] Setup Function'
#    echo $machine
    mkdir $machine
    cd $machine

    # creates a session with the session name in a detached mode
    echo "[*] Creating TMUX Session"
    session=$machine
    tmux new-session -d -s $session

    # sets environment variable
    echo "[+] Setting Environmental Variable"
    tmux setenv -t $session 'ip' $ip

    # Tmux new pane
    echo '[*] Creating new Pane'
    tmux splitw -v -p 50

    # tmux selectp -t machine
    echo '[!] Killing First Pane'
    tmux selectp -t 0
    tmux kill-pane -t 0

    # Window edits
    echo '[+] Altering values of the window'
    tmux rename-window -t $session:0 'notes'
    tmux send-keys 'mkdir nmap files' C-m
    tmux send-keys 'cp /opt/REAME.md ' $machine C-m
    # tmux send-keys '<bashcommands>' C-m
    
    # new window
    echo '[#] Creating new window'
    tmux new-window -t $session:1 -n 'web'
    tmux send-keys "curl -s --head http://"$ip"/index.php | awk NR==1" C-m
    tmux send-keys "curl -s --head http://"$ip"/index.html | awk NR==1" C-m

    # attach session
    echo "[*] Attaching the TMUX Session"
    tmux attach-session -t $session:0
}


# backup check
if [[ -f '/etc/hosts.bak' ]]; then
## DEBUG: check the existance 
#    echo "/etc/hosts file found"
    if [[ $# -ne 2 ]]; then
        echo "[-] Insufficient Argument"
        echo "Eg: $0 machine.local machine0.machine0.machine0.machine0"
        exit
    else
        echo '[*] Sufficient Arguemnts'
        dnoscp
    fi
else
    echo "[!] /etc/hosts.bak not found could harm the system"
    echo "[*] creating a copy of the hosts file"
    sudo cp /etc/hosts /etc/hosts.bak
fi

# calling function
# dnoscp

# TODO: Host File Alter
