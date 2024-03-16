#!/bin/bash
read x 
while [ $x -gt 1 ]
do
	echo $x
	((x -- ))
	sleep 2
done
echo "hurrreeeyyyyy"


