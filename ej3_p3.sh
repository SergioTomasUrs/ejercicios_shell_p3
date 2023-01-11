#!/bin/bash
#En caso de dar de baja he dejado que el segundo parametro sea el nombre de usuario completo directamente, por mas comodidad al usarlo
#Para generar un nombre válido, este script se apoya del script nom.sh
#Aparece el mensaje de error de sintaxis y a pesar de ello el script va correctamente
#Creo que con una función podría haber evitado utilizar 2 scripts, pero me daban fallos muy raros
declare nombre=$(./nom.sh $2 $3 $4)
    if [ $1 = alta ]
	then
	if [ $# = 5 ]
		then
		sudo useradd -g $5 $nombre && id $nombre
		else
		sudo useradd -U $nombre && id $nombre
	fi
	else
	echo "Error. La sintaxis correcta es ./script.sh alta/baja nombre apellido1 apellido2 [grupo]"
    fi

if [ $1 = baja ]
        then 
	id $2 && sudo userdel $2
fi
