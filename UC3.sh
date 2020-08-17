#!/bin/bash -x
isPresent=1
isPart=2
empRatePerHours=20
randomCheck=$(( RANDOM%3 ))
if [ $randomCheck -eq $isPresent ]
then

   empHrs=8
elif [ $randomCheck -eq $isPart ]
then
   empHrs=4
else
   echo "emp is absent "
fi
salary=$(( empRatePerHours * empHrs ))
echo "salary " $salary
