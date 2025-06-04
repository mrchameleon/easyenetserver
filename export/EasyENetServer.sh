#!/bin/sh
echo -ne '\033c\033]0;EasyENetServer\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/EasyENetServer.x86_64" "$@"
