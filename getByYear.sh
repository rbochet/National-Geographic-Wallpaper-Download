#!/bin/bash

# Get the year or keep the current
[ -n "$1" ] && YEAR="$1" || YEAR="$(date '+%Y')"

cd "$(dirname "$0")"
for MONTH in {01..12}; do
	./getByMonth.sh "$YEAR" "$MONTH" &
done
