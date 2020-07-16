#!/bin/bash

wagePerHrs=20
isFullTime=2
isPartTime=1
workDaysPerMonth=20
workHrsPerMonth=0

totalWorkingDays=0
totalWorkingHrs=0

function getWorkingHrs() {

	case $1 in
		$isFullTime) workingHrs=8;;
		$isPartTime) workingHrs=4;;
		          *) workingHrs=0;;
	esac
	
	echo $workingHrs
}

declare -i dailyWages
while [ $totalWorkingHrs -lt $workHrsPerMonth ] && [ $totalWorkingDays -lt $workingDaysPerMonth ]
do
	((totalWorkingDays++))
	workingHrs="$( getWorkingHrs $((RANDOM%3)) )"
	totalWorkingHrs=$(($totalWorkingHrs+$workingHrs))
	dailyWages[$totalWorkingDays]=$(( $WorkingHrs*$wagePerHrs))
done

empTotalWage=$(( $totalWorkingHrs*$wagePerHrs ))
echo "total wage of the employee : " $empTotalWage
echo "Day : " ${!dailyWages[@]}
echo "DailyWage : " ${dailyWages[@]}
