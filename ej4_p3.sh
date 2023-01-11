#!/bin/bash
#En caso de dar de baja he dejado que el segundo parametro sea el nombre de usuario completo directament$
#Para generar un nombre válido, este script se apoya del script nom.sh
declare usuario=$(./nom.sh $nombre $apellido1 $apellido2)
    if [ $1 = alta ]; then
        if [ $# = 5 ]; then
		while IFS="," read -r nombre apellido1 apellido2
		do
                sudo useradd -g $5 $usuario && id $usuario
		done < <(tail -n +2 usuarios.csv)
                else
		while IFS="," read -r nombre apellido1 apellido2 grupo
		do
                sudo useradd -U $usuario && id $usuario
		done < <(tail -n +2 usuarios.csv)
	fi
        else
        echo "Error. La sintaxis correcta es ./script.sh alta/baja nombre apellido1 apellido2 [grupo]"
  fi

if [ $1 = baja ]; then
	while
        id $nombre && sudo userdel $nombre
fi


