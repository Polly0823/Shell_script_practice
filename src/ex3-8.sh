#! /bin/sh

if [ ! -f DB.txt ]
then
	touch DB.txt
fi

name=$1
tel=$2

echo "$name $tel" >> DB.txt

exit 0
