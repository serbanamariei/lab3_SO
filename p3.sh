#!/bin/bash

if [ -f "./p2_mate.sh" ]; then
	source ./p2_mate.sh
else
	echo "Fisierul nu a fost gasit"
	exit 1
fi

if [ -f "./p3_conv.sh" ]; then
	source ./p3_conv.sh
else
	echo "Fisierul nu a fost gasit"
	exit 1
fi

afisare_meniu()
{
    echo "Alegeti operatia:"
    echo "1) +"
    echo "2) -"
    echo "3) *"
    echo "4) /"
    echo "5) %"
}

afisare_meniuConv()
{
	echo "Alegeti operatia:"
	echo "1) din zecimal in hexazecimal"
	echo "2) din hexazecimal in zecimal"
}

if [ "$#" -eq 1 ]; then
	afisare_meniuConv
	read -p "alegere --> " alegere
	case $alegere in
		'1') ZH $1 ;;
		'2') HZ $1 ;;
		*) echo "Alegere invalida"; exit 1 ;;
	esac

elif [ "$#" -eq 2 ]; then
	afisare_meniu
	read -p "alegere --> " alegere

	case $alegere in
		'1')	add $1 $2	;;
		'2')	sub $1 $2	;;
		'3')	mul $1 $2	;;
		'4')	div $1 $2	;;
		'5')	mod $1 $2	;;
		*)	echo "Alegere invalida"; exit ;;		 	
	esac
fi
