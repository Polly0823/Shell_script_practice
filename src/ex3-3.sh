#! /bin/sh

weight=$1
height=$2
height=$(echo "$height * 0.01" | bc)

BMI=$(echo "$weight / ($height * $height)" | bc -l)

if [ $(echo "$BMI < 18.5" | bc -l) -eq 1 ]
then
	echo "저체중입니다."
elif [ $(echo "$BMI >= 23" | bc -l) -eq 1 ]
then
	echo "과체중입니다."
else
	echo "정상체중입니다."
fi

exit 0
