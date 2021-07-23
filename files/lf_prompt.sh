#!/bin/bash

if [[ ! -f /tmp/target ]]; then	echo "<change me in `echo $(~/.tmux/lf_prompt.sh)`>"; else	cat /tmp/target; fi
