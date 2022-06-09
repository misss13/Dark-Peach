#!/bin/bash

l_zdj=`cd /home/balalaika/Obrazy/Tapety && ls | wc -l`
i=$((1 + $RANDOM % $l_zdj ))
feh --bg-fill ~/Obrazy/Tapety/current$i.jpg
