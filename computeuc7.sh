#!/bin/bash -x

read -p "Enter the number: " a
read -p "Enter the number: " b
read -p "Enter the number: " c

declare -A result
result[x]=$(( $a + $b * $c ))
result[y]=$(( $a * $b + $c ))
result[z]=$(( $c % $b + $a ))

echo "result of x computation: " ${result[x]}
echo "result of y computation: " ${result[y]}
echo "result of z computation: " ${result[z]}
echo "result of all computation: " ${result[@]}
echo "result of all computation in an array: " ${result[*]}
