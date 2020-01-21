echo "Welcome to  Employe wage"
WAGE_PER_HR=20
FULL_DAY_HR=8
HALF_DAY_HR=4
isfulltime=1
isparttime=2
WORKING_DAY=20

for (( i=1; i<=$WORKING_DAY; i++))
do
attendance=$((RANDOM%3))
		case $attendance in	
         $isfulltime)
				echo "Emplyoee present with full time"
				dailywages=$(($dailywages+($WAGE_PER_HR*$FULL_DAY_HR)))
				echo "wages $dailywages "
				;;
	
        	$isparttime)   
	      	echo "Emplyoee present half day "
				dailywages=$(($dailywages+($WAGE_PER_HR*$HALF_DAY_HR)))
				echo "Wages $dailywages"
				;;
         *)
				echo "Emplyoee is absent"
				((dailywages+=0))
				;;
esac
done
echo "Monthly wages : " $dailywages

