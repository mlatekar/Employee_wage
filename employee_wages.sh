#! /bin/bash -x
echo "Welcome to  Employe wage"
WAGE_PER_HR=20
FULL_DAY_HR=8
HALF_DAY_HR=4
isfulltime=1
isparttime=2
working_day=0
working_hr=0

while [[ $working_day -le 20 && $working_hr -le 100 ]]
do
attendance=$((RANDOM%3))
		case $attendance in	
         $isfulltime)
				echo "Emplyoee present with full time"
				dailywages=$(($dailywages+($WAGE_PER_HR*$FULL_DAY_HR)))
				echo "wages $dailywages "
			   ((working_day++))
            ((working_hr+=8))
				;;
        	$isparttime)   
	      	echo "Emplyoee present half day "
  			  	dailywages=$(($dailywages+($WAGE_PER_HR*$HALF_DAY_HR)))
				echo "Wages $dailywages"
			   ((working_day++))
            ((working_hr+=4))
         	;;
         *)
				echo "Emplyoee is absent"
				((dailywages+=0))
				;;
esac
done
echo "Monthly wages : " $dailywages
echo "Total working hours : " $working_hr
echo "Total working day : " $working_day
