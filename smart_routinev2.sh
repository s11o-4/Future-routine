#!/bin/bash

#This a fast project about automaticity my routine. I have like three modes:
#1. Developer 
#2. Musician
#3. Zombie (student)

echo -e '\e[1;30m|------------------------|\e[0m'
echo -e '\e[1;30m|------------------------|\e[0m'
echo -e '\e[1;30m|------------------------|\e[0m'
echo -e '\e[1;30m|-------\e[0m\e[1;34mWelcome\e[0m\e[1;30m----------|\e[0m'
echo -e '\e[1;30m|-------\e[0m\e[1;34mTo\e[0m\e[1;30m---------------|\e[0m'
echo -e '\e[1;30m|-------\e[0m\e[1;34mFuture\e[0m\e[1;30m-----------|\e[0m'
echo -e '\e[1;30m|-------\e[0m\e[1;34mRoutine\e[0m\e[1;30m----------|\e[0m'
echo -e '\e[1;30m|------------------------|\e[0m'
echo -e '\e[1;30m|------------------------|\e[0m'
echo -e '\e[1;30m|------------------------|\e[0m'
echo -e '\e[1;30m|------------------------|\e[0m'
echo -e '\e[1;30m|-------\e[0m\e[1;34mSelect-mode\e[0m\e[1;30m------|\e[0m'
echo -e '\e[1;30m|------------------------|\e[0m'
echo -e '\e[1;30m|------------------------|\e[0m'
echo -e '\e[1;30m|-------\e[0m\e[1;34m1) Developer\e[0m\e[1;30m-----|\e[0m'
echo -e '\e[1;30m|-------\e[0m\e[1;34m2) Musician\e[0m\e[1;30m------|\e[0m'
echo -e '\e[1;30m|-------\e[0m\e[1;34m3) Student\e[0m\e[1;30m-------|\e[0m'
echo -e '\e[1;30m|------------------------|\e[0m'
echo -e '\e[1;30m|------------------------|\e[0m'
#nota $ -> esto invoca la variable, mas no la reemplaza, obtiene su valor, pero no opera con el

echo -e '\e[1;30m|------------------------|\e[0m'
echo -e '\e[1;30m|------------------------|\e[0m'


read x_mode

mode_developer() {
    echo "Mode developer activated!"
    code
    nohup brave-browser > /dev/null 2>&1 &
    terminator > /dev/null 2>&1 &
    nohup epiphany --application-mode --profile="/home/s11o/.local/share/epiphany-notion-486af5da11b1d7b984dd0eec94e15310e479449f" https://www.notion.so/eebf0b7374624083b4edc597927d6a9a?v=35ea7e07551345c89da946db3b2f3bf2 > /dev/null 2>&1 &
}

mode_musician() {
    echo "Mode musician activated!"
    brave-browser file:///home/s11o/Documents/Guitar/Curso/Curso%20completo%20de%20guitarra%20electrica%20Nivel%202.pdf https://clasesdeguitarra.com.co/ > /dev/null 2>&1
    nohup gtick > /dev/null 2>&1 &
    nohup epiphany --application-mode --profile="/home/s11o/.local/share/epiphany-notion-486af5da11b1d7b984dd0eec94e15310e479449f" https://www.notion.so/eebf0b7374624083b4edc597927d6a9a?v=35ea7e07551345c89da946db3b2f3bf2 > /dev/null 2>&1 &
}
mode_school() {
    echo "Mode student activated!"
    brave-browser https://cursos.tecmilenio.mx/ > /dev/null 2>&1 &
    nohup zoom > /dev/null 2>&1 &
    nohup epiphany --application-mode --profile="/home/s11o/.local/share/epiphany-notion-486af5da11b1d7b984dd0eec94e15310e479449f" https://www.notion.so/eebf0b7374624083b4edc597927d6a9a?v=35ea7e07551345c89da946db3b2f3bf2 > /dev/null 2>&1 &
}

case $x_mode in
    1) 
        mode_developer
    ;;
    2)  
        mode_musician
    ;;
    3)
        mode_school
    ;;
    *)
        echo "Please select a valid number"
esac 

sleep 1
kill -9 $PPID




#cd Documents/Code/Shell/Future_routineV0/
