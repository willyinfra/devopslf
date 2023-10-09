#!/bin/bash

while true; do

	echo "Digite 's' para continuar ou 'q' para sair"
	read OPCAO

	case $OPCAO in
		s)
			echo "Executando Alteracao de Hostname da maquina"
			;;
		q)
			echo "Saindo do Script de alteracao de nome..."
			sleep 3
			break
			;;
		*)
			echo "Invalid Option"
			;;
	esac



nome(){
	echo "Digite  o nome da maquina"
	read NOME
}

nome



NEWNAME=$(echo $NOME |tr A-Z a-z)

if [ "$NEWNAME" = "$(hostname)" ]; then
	echo " O Hostanme já e $NOME !"
else
	hostnamectl set-hostname $NEWNAME
fi

done
