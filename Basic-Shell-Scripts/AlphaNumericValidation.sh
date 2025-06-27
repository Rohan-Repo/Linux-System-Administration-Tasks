#!/bin/bash

echo -n "Enter your Name:"
read name

echo -n "Enter your Program:"
read program

echo -n "Enter Semester #"
read semester

if [[ "$name" = ~^[[:alpha:]] ]]; then 
 	echo "Your Name is $name"
 	sleep 1
else
	echo "Enter Alphabetic Characters only"
fi

if [[ "$program" = ~^[[:alpha:]] ]]; then 
 	echo "You are in $program program"
 	sleep 1
else
	echo "Enter Alphabetic Characters only"
fi
 
if [[ "$semester" = ~^[[0-9]] ]]; then 
 	echo "You are in Semester #$semester"
 	sleep 1
else
	echo "Enter Numeric Characters only"
fi
