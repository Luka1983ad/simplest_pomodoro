#!/bin/sh

INST_FOLDER=~/bin/

cp -u simplest_pomodoro.sh $INST_FOLDER
cp -u помидор $INST_FOLDER
cp -u отпомидорено $INST_FOLDER
cp -u alert.mp3 $INST_FOLDER

mpg321 -q $INST_FOLDER/alert.mp3 > /dev/null

echo "Программа simplest_pomodoro установлена в папку $INST_FOLDER."
echo "Только что прослушенный вами звук будет далее использоваться для оповещения о завершении помидора."
echo "Наберите в консоле \"помидор ваша_задача\" чтобы начать новый помидор."
echo "Наберите \"отпомидорено количество_помидоров ваша_задача\" - чтобы задним числом внести в статистику неучтенные помидоры."
echo "Статистику вы можете найти в файле pomodoro_log.csv в домашней директории пользователя."

