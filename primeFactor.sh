#!/bin/bash -x

read -p "Enter  the Number:" num

var=$num;
count=0;
for(( i=2; i<=$num; i++ ))
do
	while [ $(($num%$i)) -eq 0 ]
	do
		arr[count++]=$i
		num=$(( $num/$i ))
	done
done
echo "factor of number $var are :" ${arr[@]}
