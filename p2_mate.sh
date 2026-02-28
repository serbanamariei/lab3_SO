#!/bin/bash

add()
{
	echo "Rezultat: $(($1+$2))"
}

sub()
{
	echo "Rezultat: $(($1-$2))"
}

mul()
{
	echo "Rezultat: $(($1*$2))"
}

div()
{
	if [ "$2" -eq 0 ]; then
		echo "NU SE IMPARTE LA 0!"
	else
		echo "Rezultat: $(($1/$2))"
	fi
}

mod()
{
	echo "Rezultat: $(($1%$2))"
}
