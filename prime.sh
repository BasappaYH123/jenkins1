#!/bin/bash
echo "The first 10 prime numbers are : " 
for mun in `seq 1 30`
do
	ret=$(factor $mun | grep $mun | cut -d ":" -f 2 | cut -d " " -f 2)

	if [ $ret -eq $mun ] 
	then 
		echo "$mun"
	fi 
done



