#!/bin/bash -x

result=(14 10 3)
echo  "array in original order: " ${result[*]}

#performing bubble sort
for ((i=0; i<3; i++))
do
    for((j=0; j<3-i-1; j++))
    do
          if [ ${result[j]} -gt ${result[$((j+1))]} ]
          then
            #swap
             temp=${result[j]}
             result[$j]=${result[$((j+1))]}
             result[$((j+1))]=$temp
          fi
    done
done

echo "Array in sorted order :" ${result[*]}
