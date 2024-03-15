#!/bin/bash
echo enter the number:
read a
if [ $a -gt 10 ]
then
	echo "$a is greater then 10"
else 
	echo "$a is less then 10 "
fi
