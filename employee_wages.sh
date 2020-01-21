echo " welcome to  Employe wage"
wage_per_hr=20
full_day_hr=8

attandance=$((RANDOM%2))
if [[ $attandance -eq 0 ]]
then
echo "emplyoee present"
dailywages=$(($wage_per_hr*$full_day_hr))
echo "wages $dailywages "
else 
echo "absent"
fi
