#!/bin/sh

SCRIPT_PATH=`dirname $0`
LOG_NAME=~/pomodoro_log.csv

notify-send "Помидор запущен"
sleep 900
notify-send "Осталось 10 минут"
sleep 600
mpg321 $SCRIPT_PATH/alert.mp3
zenity --warning --text="Помидор завершен! Сделайте 5-минутный перерыв."


echo -n "1;\"$@\";" >> $LOG_NAME
date +"%T ; %D" >> $LOG_NAME

sleep 300
zenity --warning --text="Перерыв закончен, можно продолжать."

# grep -c `date +%D` pomodoro_log.csv
