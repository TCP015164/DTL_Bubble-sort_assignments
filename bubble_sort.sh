#!/bin/bash

echo -n "Enter length of Array : "
read length

k=0

while [ $k -lt $length ]
do
    echo -n "Enter element at index $k : "
    read arr[$k]
    k=$((k+1))
done
  
echo "Array in original order"
echo ${arr[*]} 

 
for ((i = 0; i<$length; i++)) 
do
      
    for((j = 0; j<$length-i-1; j++)) 
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ] 
        then
            temp=${arr[j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done
  
echo "Array in sorted order :"
echo ${arr[*]}
