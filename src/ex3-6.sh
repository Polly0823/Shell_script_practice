#! /bin/sh

dir_name=$1

if [ -d $dir_name ]
then
	echo "폴더가 이미 존재합니다."
else
	mkdir $dir_name
	cd $dir_name
	for i in 0 1 2 3 4
	do
		touch file$i.txt
	done
	tar -cf $dir_name.tar file0.txt file1.txt file2.txt file3.txt file4.txt
	ls 
	mkdir $dir_name
	mv $dir_name.tar $dir_name/
	cd $dir_name
	tar -xvf $dir_name.tar 
fi
exit 0
