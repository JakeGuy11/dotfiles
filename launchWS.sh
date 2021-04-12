#!/usr/bin/bash

# Check if the workspace is open. If it is, go to it. If it isn't, go to it and open the passed program
if [[ $(i3-msg -t get_workspaces | grep "$1") ]]; then
	i3 workspace number "$1"
else
	i3 workspace number "$1"
	exec $2
fi
