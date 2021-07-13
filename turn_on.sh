#!/bin/bash

#mando como argumento un 0 a rtc/wakealarm -> le hago un reset
sh -c "echo 0 > /sys/class/rtc/rtc0/wakealarm"

#luego le mando como argumento de que se ejecute pasadas las 9 horas que sea ejecutado
sh -c "echo `date '+%s' -d '+ 10 hours'` > /sys/class/rtc/rtc0/wakealarm"

