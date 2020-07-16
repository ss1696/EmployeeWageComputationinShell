#!/bin/bash

wagePerHrs=20
isFullTime=2
isPartTime=1

empPresent=$((RANDON%3))

if [ $empPresent -eq $isFullTime ]
then
	workingHrs=8
elif [ $empPresent -eq $isPartTime ]
then
	workingHrs=4
else
	workingHrs=0
fi
