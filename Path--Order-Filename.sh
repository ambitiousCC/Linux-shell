#!/bin/bash
# first shell for read and change file
# 输入一个正确格式目录，一个正确的命令名，一个文件名称，执行该目录下所有的命令文件操作
# author cuiqin

# define a function
funReadAndWrite(){
	# NEW PATH
	FILEPATH=$1/$3
	# EXECUTE
	`$2 $FILEPATH`
	# READ
	for file in `ls $1`
	do
		if test -f $file
		then
			echo "now there is a file named \"$FILE\""
		elif test -d $FILE
		then
			echo "find a new path:$FILE"
			NEWPATH=$1/$FILE
			funReadAndWrite $NEWPATH $2 $3
		fi
	done
}

# domain
echo "input the directory path: "
read FILEPATH
while [ ! -d $FILEPATH ]
do
	echo $FILEPATH is not a directory, please input again!
	read FILEPATH
done

echo "input the command"
read COMMAND
echo "input the target-file-name: "
read FILENAME
echo "Are you sure? You will $COMMAND \"${FILENAME}\"(y/n)"
read YN
if [ $YN = "y" ]
then
	funReadAndWrite $FILEPATH $COMMAND $FILENAME
elif [ $YN = "n" ]
then
	echo "ok!"
else
	echo "Incorrect input ! Cancel command"
fi