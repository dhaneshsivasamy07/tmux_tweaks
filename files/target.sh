#!/bin/bash

target=$(tmux show-environment | grep ip | cut -d "=" -f 2)

if [ -z $target ]; then
	echo "No Target"
else
	echo $target
fi
