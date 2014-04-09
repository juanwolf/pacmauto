#!/bin/sh

while /usr/bin/inotifywait -e create /var/lib/pacman; do
	/usr/bin/notify-send "pacmauto" "Updating...";
	updateDone=0
	while /usr/bin/inotifywait -e delete /var/lib/pacman -t 120; do
		updateDone=1;
	done
	if [ $updateDone -eq 1 ]; then
		/usr/bin/notify-send "pacmauto" "Update done, you can install it with pacman -Su";
	fi
done


