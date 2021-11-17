#!/bin/bash -x

read -p "Enter Number:" num

for ((i=1; i<=$num; i++))
do
	random=$((RANDOM%900+100));
	arr[i]=$random;
done

echo ${arr[@]}

for ((i=1; i<=${#arr[@]}; i++))
do
	for ((j=$i+1; j<=${#arr[@]}; j++))
	do
	   if [ ${arr[$j]} -gt ${arr[$i]} ]
	   then
		temp=${arr[$i]}
		arr[i]=${arr[$j]}
		arr[j]=$temp
	   fi
	done
done
for ((i=1; i<=$num; i++))
do
	echo ${arr[$i]}
done

echo ${arr[@]}
echo "second Smallest:" ${arr[$i-2]}
echo "second Largest: " ${arr[2]}
