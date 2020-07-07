#!/bin/bash -x
declare -a array
n=10
for (( i=0; i<$n; i++ ))
do
	array[$i]=$((((RANDOM%888))+100))
   #echo $array
done
echo "${array[*]}"
first=${array[0]}
second=${array[1]}
for (( i=0; i<$n; ++i ))
do
	if [[ $first -lt ${array[i]} ]]
	then
		second=$first
		first=${array[i]}
	fi
	if [[ ((${array[i]} -gt $second)) && ((${array[i]} -ne $first)) ]]
	then
		second=${array[i]}
	fi
done
if [ $second -eq $first ]
then
	echo "There is no second largest element"
else
	echo "The second largest element is:" $second
fi
maximum=$first
first=$maximum
second=$maximum
for (( i=0; i<$n; ++i ))
do
   if [[ $first -gt ${array[i]} ]]
   then
      second=$first
      first=${array[i]}
   fi
   if [[ ((${array[i]} -lt $second)) && ((${array[i]} -ne $first)) ]]
   then
      second=${array[i]}
   fi
done
if [ $second -eq $maximum ]
then
   echo "There is no second smallest element"
else
   echo "The second smallest element is:" $second
fi






