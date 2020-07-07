#!/bin/bash -x

declare -a array
n=10
function sortarray(){
   for (( i=0; i<=$n; i++ ))
   do
      array=$((((RANDOM%888))+100))
   #return $array
done
echo "${array[i]}"
}
sortarray
echo ${!array[@]}
