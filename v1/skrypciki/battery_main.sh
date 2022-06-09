#!/bin/bash	

pro1=15
pro2=10
pro3=5
full=100

while :
do
	plugged=$(cat /sys/class/power_supply/AC/online)
	actual=$(cat /sys/class/power_supply/BAT0/capacity)
	if [ "$plugged" = "0" ] 
	then
	 	if [ "$actual" = "$pro1" ]
	 	then
	 		notify-send " Bateria" "Zostało 15% baterii, podłącz ładowarę"
	 	fi

	 	if [ "$actual" = "$pro2" ]
	 	then
	 		notify-send " Bateria" "Zostało 10% baterii, podłącz ładowarkę"
		fi
	 	if [ "$actual" = "$pro3" ]
	 	then
	 		notify-send " Bateria" "Zostało 5% baterii, podłącz ładowarkę"
	 	fi
	else
		if [ "$actual" = "$full" ]
		then
			notify-send " Bateria" "Odłącz ładowarkę, bateria naładowana"
		fi
	fi
	sleep 100
done
