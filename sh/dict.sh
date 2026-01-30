#!/bin/sh
set -eu

word="$(wmenu -p 'Dict:')"
[ -n "$word" ] || exit 0

exec alacritty -t Dict -o font.size=17 -e sh -c "sdcv --color \"$word\" | less -R"
