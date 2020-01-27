#!/bin/bash -x
echo "Welcome to  Employe wage"
WAGEPERHR=20
isFullTime=1
isPartTime=2
workingHr=0
totalWorkingHours=0
totalWorkingDays=0
declare -A Day
function getWorkingHours(){		
case $1 in	
         $isFullTime)
			   ((workingHr=8))
				;;
        	$isPartTime)   
	         ((workingHr=4))
         	;;
         *)
				((dailyWages=0))
				;;
		esac
	}
while [[ $totalWorkingDays -le 20 && $totalWorkingHours -le 100 ]]
do
		((totalWorkingDays++))
 		getWorkingHours $((RANDOM%3)) 
 		totalWorkingHours=$(($totalWorkingHours+$workingHr))
#		dailyWages[$totalWorkingDays]=$(($working_hr*$WAGEPERHR))
		echo Day"$totalWorkingDays""${Day[Day"$totalWorkingDays"]}=$(($workingHr*$WAGEPERHR))"
done
salary=$(($totalWorkingHours*$WAGEPERHR))
echo  "Total working hours : " $totalWorkingHours
echo  "Total monthly salary : "$salary
