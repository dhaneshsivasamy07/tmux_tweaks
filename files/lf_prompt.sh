#!/bin/bash

# Display the contnets of the file in each file
# add -t0 to the tmux command if you want persistant # -t<n> : target pane
# only shows ip when there is an IP file

# checks if the file ip is present in the focused tmux pane
# if not present
if [[ ! -f `tmux display-message -p -F "#{pane_current_path}"`/ip ]];
	then 
		# check for the existance of /tmp/ip file
		if [[ ! -f /tmp/ip ]];
			# if /tmp/ip is not available echo dnoscp
			then echo "dnoscp";
		else
			# else echo the contents
			cat /tmp/ip; 
		fi
	else 
		# else echo the contents of current pane
		cat `tmux display-message -p -F "#{pane_current_path}"`/ip;
fi