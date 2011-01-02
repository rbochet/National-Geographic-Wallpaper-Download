#!/bin/bash

YEAR=$1

for MONTH in {1..12}
do 
	./getByMonth.sh $YEAR $MONTH &
done
