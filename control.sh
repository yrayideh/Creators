#!/bin/bash
#in this script we are testing the if command

echo what is the first bid
read bid1
if [ $bid1 -lt 3000 ]
then 
echo price is too low
elif [ $bid1 -gt 3000 ]
then
echo please continue to check out
fi

