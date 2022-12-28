echo "Welcome to EmployeeWage Computation Program !!!"

isPartTime=1
isFullTime=2
empHrs=0
totalsalary=0
totalworkingHour=0
empRateperHr=20
numworkingDays=20
day=1
while [[ $day -le 20 && $totalworkingHour -lt 100 ]]
do
randomcheck=$((RANDOM%3))
case $randomcheck in $isFullTime)
                      empHrs=8;;
                     $isPartTime)
                      empHrs=4;;
                     *)
                      empHrs=0;;
esac
totalworkingHour=$(($totalworkingHour+$empHrs))
if [ $totalworkingHour -gt 100 ]
then
totalworkingHour=$(($totalworkingHour-$empHrs))
break;
fi
salary=$(($empRateperHr*empHrs))
totalsalary=$(($totalsalary+$salary))
((day++))
done
echo "Employee has earned $totalsalary $ in a month (total working hours: $totalworkingHour)"
