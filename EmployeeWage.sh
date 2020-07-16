#!/bin/bash

wagePerHrs=20
isFullTime=2
isPartTime=1
workDaysPerMonth=20
workHrsPerMonth=0

totalWorkingDays=0
totalWorkingHrs=0

while [ $totalWorkingHrs -lt $workHrsPerMonth ] && [ $totalWorkingDays -lt $workDaysPerMonth ]
do
	((totalWorkingDays++))
	empPresent=$((RANDOM%3))
	case $empPresent in
		$isFullTime) workingHrs=8;;
		$isPartTime) workingHrs=4;;
		          *) workingHrs=0;;
	esac
	totalWorkingHrs=$(( $totalWorkingHrs+$workingHrs ))
done

empTotalWage=$(( $totalWorkingHrs*$wagePerHrs ))
echo "total wage of the employee : " $empTotalWage
