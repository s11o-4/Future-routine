 
#!/bin/bash

x_mode=$1

mode_developer() {
    echo 'Mode developer activated!'
    nohup brave-browser > /dev/null 2>&1 &
    terminator > /dev/null 2>&1 &
    code
}
mode_musician() {
    echo 'Mode musician activated!'
    clases_guitarra='https://clasesdeguitarra.com.co/'
    notion='https://www.notion.so/M-sica-a956c8b18c1048eaac675c68b81315cb'
    gui_uno='file:///home/s11o/Documents/Guitar/Curso/Curso%20completo%20de%20guitarra%20electrica%20nivel%201.pdf'
    gui_dos='file:///home/s11o/Documents/Guitar/Curso/Curso%20completo%20de%20guitarra%20electrica%20Nivel%202.pdf' 
    gui_tres='file:///home/s11o/Documents/Guitar/Curso/Curso%20completo%20de%20guitarra%20electrica%20Nivel%203.pdf'
		hoja_random='file:///home/s11o/Documents/Guitar/Curso/Hoja%20Random.pdf'
    nohup brave-browser $clases_guitarra $notion $gui_dos $gui_uno $hoja_random > /dev/null 2>&1
		nohup gtick > /dev/null 2>&1 &
}
mode_school() {
    echo 'Mode student activated!'
    escuela='https://cursos.tecmilenio.mx/'
    nohup brave-browser $escuela > /dev/null 2>&1 &
    nohup zoom > /dev/null 2>&1 &
}

case $x_mode in
    -1) 
        mode_developer
    ;;
    -2)  
        mode_musician
    ;;
    -3)
        mode_school
    ;;
    *)
        echo 'Please select a valid number'
esac 

sleep 1
kill -9 $PPID

#cd Documents/Code/Shell/Future_routineV0/
