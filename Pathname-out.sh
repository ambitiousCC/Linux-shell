#!/bin/bash
# second shell
# print for env varible
echo 'Press <CTRL-D> to exit'
echo -n 'Input the varible name'
# input varible
while read NAME
do
	eval echo "${NAME}=\$$NAME"
	echo "Input the varible name or Press<CTRL-D> to exit"
done
