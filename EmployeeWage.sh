#!/bin/bash

wagePerHrs=20

empPresent=$((RANDON%3))

if [ $empPresent -eq 2 ]
then
	echo "employee is Present"
	workingHrs=8
else
	echo "employee is Absent"
	workingHrs=0
fi

empDailyWage=$(( $wagePerHrs*$workingHrs))
echo "1 day wage of the employee : " $empDailyWage
