#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  sudo "$0" "$@"
  exit $?
fi

declare -A options

while getopts "h:t:"; do
	case "$opt" in
		h)
			echo "this is a script to switch the yml theme to toml"
			echo "this program need root permission"
			echo "------------------------------------------------"
			echo "$0 <option> values"
			;;
		t)
			options["t"]=$OPTARG
			if [-e "./alacritty"]
			fi
			;;
		\?)
			echo "wrong options"
	esac
done
