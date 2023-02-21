#!/usr/bin/env bash
# Author: github.com/NeshHari

# Define the list of modules to close
modules=(applications showquote showfocusedclass spotify mycal showsysdata powermenu bluetooth)

# Get the argument passed to the script
module="$1"

# Check if the module is valid
if [[ " ${modules[@]} " =~ " ${module} " ]]; then
	# Close all modules
	for mod in "${modules[@]}"; do
		if [[ "$mod" != "$module" ]]; then
			eww close "$mod"
		fi
	done

	# Open the specified module
	eww open --toggle "$module"
else
	exit 1
fi
