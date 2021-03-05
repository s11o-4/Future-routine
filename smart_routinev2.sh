#!/bin/bash

#This a fast project about automaticity my routine. I have like three modes:
#1. Developer 
#2. Musician
#3. Zombie (student)


echo "|----------------------------------------------------|"
echo "|----------------------------------------------------|"
echo "|----------------------------------------------------|"
echo "|----------Welcome-----------------------------------|"
echo "|----------to----------------------------------------|"
echo "|----------Future------------------------------------|"
echo "|----------routine-----------------------------------|"
echo "|----------------------------------------------------|"
echo "|----------------------------------------------------|"
echo "|----------------------------------------------------|"
echo "|----------------------------------------------------|"
echo "|What mode do you want to activate?------------------|"
echo "|----------------------------------------------------|"
echo "|----------------------------------------------------|"
echo "|1) Developer----------------------------------------|" 
echo "|2) Musician-----------------------------------------|"
echo "|3) Zombie(Student)----------------------------------|"
echo "|----------------------------------------------------|"
echo "|----------------------------------------------------|"
#nota $ -> esto invoca la variable, mas no la reemplaza, obtiene su valor, pero no opera con el

echo "|----------------------------------------------------|"
echo "|----------------------------------------------------|"
echo "|-----------------Please type an number--------------|"
echo "|----------------------------------------------------|"
echo "|----------------------------------------------------|"
echo "|----------------------------------------------------|"
read x_mode

mode_developer() {
    # echo "Mode developer activated "
    # nohup brave-browser > /dev/null 2>&1
    # terminator > /dev/null 2>&1
    # code
    echo $$
    kill -9 $$
    kill $name_process
    # exit
}
mode_musician() {
    echo "Mode musician activated!"
    brave-browser > /dev/null 2>&1
    gtick &
    disown %1
    exit
}
mode_school() {
    echo "Mode student activated"
    zoom &
    disown %1
    exit
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