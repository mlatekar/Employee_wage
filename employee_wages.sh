#!/bin/bash -x
echo "Welcome to  Employe wage"
WAGE_PER_HR=20
isfulltime=1
isparttime=2
working_hr=0
totalWorkingHours=0
totalWorkingDays=0
function getWorkingHours(){		
case $1 in	
         $isfulltime)
			   ((working_hr=8))
				;;
        	$isparttime)   
	         ((working_hr=4))
         	;;
         *)
				((dailywages=0))
				;;
		esac
	#	echo $working_hr
}
while [[ $totalWorkingDays -le 20 && $totalWorkingHours -le 100 ]]
do
		((totalWorkingDays++))
 		getWorkingHours $((RANDOM%3)) 
 		totalWorkingHours=$(($totalWorkingHours+$working_hr))

done
salary=$(($totalWorkingHours*$WAGE_PER_HR))
echo  "Total working hours : " $totalWorkingHours
echo  "Total monthly salary : "$salary
