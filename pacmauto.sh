#!/bin/sh

while inotifywait -e create /var/lib/pacman; do
	notify-send pacmauto 'Updating...';
	updateDone=0
	while inotifywait -e delete /var/lib/pacman -t 30; do
		updateDone=1;
	done
	if [ $updateDone -eq 1 ]; then
		notify-send pacmauto "Update done, you can install it with pacman -Su";
	fi
done


