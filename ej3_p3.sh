#!/bin/bash
#Para generar un nombre válido, este script se apoya del script nom.sh
#Aparece el mensaje de error de sintaxis y a pesar de ello el script va correctamente
#Creo que con una función podría haber evitado utilizar 2 scripts, pero me daban fallos muy raros
declare nombre=$(./nom.sh $1 $2 $3)
echo "1) Dar de alta a un usuario"
echo "2) Dar de baja a un usuario"
read ele
    if [ $ele = 1 ]
	then
	if [ $# = 4 ]
		then
		sudo useradd -g $4 $nombre && id $nombre
		else
		sudo useradd -U $nombre && id $nombre
	fi
	else
	echo "Error. La sintaxis correcta es ./script.sh alta/baja nombre apellido1 apellido2 [grupo]"
    fi

if [ $ele = 2 ]
        then 
	id $nombre && sudo userdel $nombre
fi
