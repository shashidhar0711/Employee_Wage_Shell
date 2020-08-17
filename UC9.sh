#!/bin/bash -x
numOfWrkDays=20
empRatePerHours=20
isPresent=1
isPart=2
maxHrsinMonth=20
totalWorkDays=0
totalEmpHrs=0
function getWorkHrs () {
            local $randomCheck=$1
             case $randomCheck in
                           $isPresent)
                                    empHrs=8 ;;
                              $isPart)
                                    empHrs=4 ;;
                              *)
                                    empHrs=0 ;;
            esac
            echo $empHrs
}
declare -A dailyWage

function getEmpWage ( ) {
         local empHr=$1
         echo $(($empHr*$empRatePerHours))
}
while [[ $totalWorkDays -lt $numOfWrkDays  && $totalEmpHrs -lt $maxHrsinMonth ]]
do
      (( totalWorkDays++ ))
      randomCheck=$(( RANDOM%3 ));
      echo $randomCheck
      empHrs="$( getWorkHrs $randomCheck )"
      totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
      dailyWage["day" "$totalWorkDays"]="$( getEmpWage $empHrs )"
done
totalsalary=$(( $totalEmpHrs * $empRatePerHours ));
echo $totalsalary
echo ${dailyWage[@]}
echo ${!dailyWage[@]}
