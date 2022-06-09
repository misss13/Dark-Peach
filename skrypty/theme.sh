#!/bin/bash

if [[ -f /home/balalaika/.config/skrypty/czy_dark ]]; then
    czy=`cat /home/balalaika/.config/skrypty/czy_dark`
fi
if [[ $czy == 1 ]]; then
	`echo "0" > /home/balalaika/.config/skrypty/czy_dark`
	cp /home/balalaika/.config/alacritty/alacritty.yml.brig /home/balalaika/.config/alacritty/alacritty.yml
	#cp /home/balalaika/.config/skrypty/bright_prompt /home/balalaika/.zshrc
else
	`echo 1 > /home/balalaika/.config/skrypty/czy_dark`
	cp /home/balalaika/.config/alacritty/alacritty.yml.dark /home/balalaika/.config/alacritty/alacritty.yml
	#cp /home/balalaika/.config/skrypty/dark_prompt /home/balalaika/.zshrc
fi
