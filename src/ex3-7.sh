#! /bin/sh

dir_name=$1

mkdir $dir_name
cd $dir_name

for i in 0 1 2 3 4
do
	touch file$i.txt
	mkdir file$i
	ln -s file$i.txt file$i/file$i.txt
done

exit 0
