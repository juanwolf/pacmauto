#!/bin/sh

while inotifywait -e create /var/lib/pacman; do
	notify-send pacmauto 'Updating...';
	while inotifywait -e delete /var/lib/pacman; do
		notify-send pacmauto "Update done, you can install it with pacman -Su";
	done
done


