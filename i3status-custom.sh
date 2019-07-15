#!/bin/bash

# shell scipt to prepend i3status with more stuff

i3status --config ~/.config/i3status/config | while :
do
        read line
	COMMAND=$(xset -q | grep LED | awk '{ print $10 }')
	case "$COMMAND" in
		"00000000"|"00000001") LAYOUT="uk" ;;
		"00000000"|"00000002") LAYOUT="us" ;;
		"00001000"|"00001001") LAYOUT="it" ;;
		"00001006"|"00001006") LAYOUT="ir" ;;
		*) LAYOUT="??" ;;
	esac

        echo "KBLayout: $LAYOUT | $line" || exit 1
done
