echo "Welcome to EmployeeWage Computation Program !!!"

isPartTime=1
isFullTime=2
empHrs=0
totalsalary=0
totalworkingHour=0
empRateperHr=20
numworkingDays=20
day=1
function calculateWorkingHour() {
    case $randomcheck in $isFullTime)
                      empHrs=8;;
                     $isPartTime)
                      empHrs=4;;
                     *)
                      empHrs=0;;
esac
  echo $empHrs
  }

while [[ $day -le 20 && $totalworkingHour -lt 100 ]]
do
randomcheck=$((RANDOM%3))
wHour=$(calculateWorkingHour $randomcheck)
totalworkingHour=$(($totalworkingHour+$wHour))
if [ $totalworkingHour -gt 100 ]
then 
     totalworkingHour=$(($totalworkingHour-$wHour))
	 break
	 fi
	 salary=$(($empRateperHr$wHour))
	 totalsalary=$(($totalsalary+$salary))
	 ((day++))
echo "Daily wage: "${salary[@]}
echo "Total wage: "${totalsalary[@]}
done 
echo "Employee has earned $totalsalary$ in a month (Total working Hour : $totalworkingHour)"	 
