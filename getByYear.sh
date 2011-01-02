#!/bin/bash

YEAR=$1

for MONTH in {01..12}
do 
	echo $MONTH
	./getByMonth.sh $YEAR $MONTH &
done
