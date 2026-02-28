ZH()
{
	echo "Rezultat: $(echo "obase=16; $1" | bc)"
}

HZ()
{
	echo "Rezultat: $(echo "ibase=16; $1" | bc)"
}
