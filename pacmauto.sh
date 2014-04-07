#!/bin/sh

while inotifywait -e modify /var/lib/pacman; do
	while inotifywait -e delete_self /var/lib/pacman/db.lck; do
		notify-send "Update time my love"
	done
done


