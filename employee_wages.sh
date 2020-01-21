echo "Welcome to  Employe wage"
WAGE_PER_HR=20
FULL_DAY_HR=8
HALF_DAY_HR=4
attendance=$((RANDOM%3))
	if [[ $attendance -eq 1 ]]
		then
			echo "Emplyoee present with full time"
			dailywages=$(($WAGE_PER_HR*$FULL_DAY_HR))
			echo "wages $dailywages "
	elif [[ $attendance -eq 2 ]]
			then
         echo "Emplyoee present half day "
			dailywages=$(($WAGE_PER_HR*$HALF_DAY_HR))
			echo "Wages $dailywages"
	else 
			echo "Emplyoee is absent"
	fi
