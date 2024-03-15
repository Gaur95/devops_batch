#!/bin/bash
echo tell me your first name
read a
if [ $a == "akash" ]
then 
	echo akash your surname is gaur
elif [ $a == "gurpreet" ]
then 
	echo hello gurpreet your surname is singh
else 
	echo i dont know
fi
