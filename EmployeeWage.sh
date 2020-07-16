#!/bin/bash

empPresent=$((RANDON%3))

if [ $empPresent -eq 2 ]
then
	echo "employee is Present"
else
	echo "employee is Absent"
fi
