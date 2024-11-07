#! /bin/sh

innerFunc () 
{
	echo "함수 안으로 들어 왔음"
	if [ -n $1 ]
	then
		order="ls $1"
		eval $order
	else
		ls
	fi
}

echo "프로그램을 시작합니다."
innerFunc $1
echo "프로그램을 종료합니다."

exit 0
