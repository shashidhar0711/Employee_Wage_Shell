#!/bin/bash -x
isPresent=1
randomCheck=$(( RANDOM%2 ))
if [ $randomCheck -eq $isPresent ]
then
   echo "emp is present "
else
   echo "emp is absent "
fi
