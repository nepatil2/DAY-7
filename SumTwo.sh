#!/bin/bash -x

arr=(7 2 -9)
echo ${arr[@]}
sum=0

for i in ${arr[@]}
do
	sum=`expr $sum + $i`
done

echo $sum
