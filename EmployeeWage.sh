#!/bin/bash

wagePerHrs=20
isFullTime=2
isPartTime=1

empPresent=$((RANDON%3))

case $empPresent in
	
	isFullTime) workingHrs=8;;
	isPartTime) workingHrs=4;;
		 *) workingHrs=0;;
esac

empDailyWage=$(( $wagePerHrs*$workingHrs ))
echo "1day wage of a employee : " $empDailyWage 
