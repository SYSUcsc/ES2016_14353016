#!/bin/bash
c=1
while :
do
	echo "$c times"
	java Deadlock
	c=`expr $c + 1`
done
