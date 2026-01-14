#! /bin/bash

if [ $# -ne 2 ]
then
	echo "This script requires exactly two arguments for Operation"
	echo "Please try Again"
	exit 1
fi

num1=$1
num2=$2

echo "The Sum of two Numbers is : $(($num1 + $num2))"
echo "The Substraction of two Numbers is : $(($num1 - $num2))"
echo "The product of two Numbers is : $(($num1 * $num2))"
echo "The Division of two Numbers is : $(($num1 / $num2))"
echo "The mudulo of two Numbers is : $(($num1 % $num2))"
echo "The exponent of two Numbers is: $(($num1 ** $num2))"


