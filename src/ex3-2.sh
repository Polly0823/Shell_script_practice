#! /bin/sh

num1=$1
operator=$2
num2=$3

result=`expr $num1 $operator $num2`
echo $result

exit 0
