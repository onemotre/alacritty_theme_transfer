#!/bin/bash

declare -A options

while getopts "h:t:i:u:" opt; do
    case "$opt" in
        h)
            echo "./$0 <option> value"
            echo "--------------------------------------------------------------------"
            echo "-h                                  Print the help"
            echo "-t [configure name]                 Transfer the configure into toml"
            echo "-i [configure name] -u [username]   Install the configure"
            exit 1
            ;;
        t)
            options["t"]=$OPTARG
            alacritty migrate -c ./themes_yml/$OPTARG.yml
            mv ./themes_yml/$OPTARG.toml ./alacritty.toml
            exit 1
            ;;
        i)
            options["i"]=$OPTARG
            ;;
        u)
            options["u"]=$OPTARG
            ;;
        \?)
            echo "unkown option"
            exit 1
            ;;
        esac
done

if [ "$EUID" -ne 0 ]; then
  sudo "$0" "$@"
  exit $?
fi
echo "${options["i"]}"
echo "${options["u"]}"
alacritty migrate -c ./themes_yml/${options["i"]}.yml
mv ./themes_yml/${options["i"]}.toml /home/${options["u"]}/.config/alacritty/alacritty.toml