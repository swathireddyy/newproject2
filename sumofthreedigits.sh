#!/bin/bash -x
declare -a arr
#arr[]=(0 -1 2 -3 1)
function findTriplets(){
   #arr[]=(0 -1 2 -3)
    found=true
   for (( i=0; i<$n-2; i++ ))
   do
   	for (( j=i+1; j<$n-1; j++ ))
      do
      	for (( k=j+1; k<$n; k++ ))
         do
         	if [[ ${arr[i]}+${arr[j]}+${arr[k]} -eq 0 ]]
            then
            	echo "The triplets with zero sum is:" ${arr[i]} ${arr[j]} ${arr[k]}
               found=true
            fi
         done
      done
   done
   if [[ $found == false ]]
   then
   	echo "not exist"
   fi
}
arr=( 0 -1 2 -3 1 )
n=$((${#arr[@]}/${#arr[0]}))
findTriplets
