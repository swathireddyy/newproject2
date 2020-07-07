#/bin/bash -x

declare -A rolls
rolldie(){
	local result=$1 sides=$2
	rolled=$(( (RANDOM % $sides) + 1))
	eval $result = $rolled
   #for (( rolls=0; rolls<tries; rolls++ ))

}
#rolldie
