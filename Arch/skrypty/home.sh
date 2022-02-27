#!/bin/bash

notify-send "`curl https://wttr.in/bielsko-biala\?0\?T`"
 notify-send "Nowych infekcji: `curl https://koronawirus-api.herokuapp.com/api/covid19/daily | grep -oP '(?<="newInfections":)[^,]*'`"

