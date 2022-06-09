#!/bin/bash

killall -q battery_main.sh
##while pgrep -u $IOD -x battery_main.sh >/dev/null do sleep 1; done
sh battery_main.sh &

