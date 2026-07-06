#!/bin/bash

#shell script to calculate simple interest

is_number() {
	echo "$1" | grep -Eq '^[0-9]+([.][0-9]+)?$'
}

echo "Enter the Principal amount: "
read principal

echo "Enter the Rate of interest: "
read roi

echo "Enter the time: "
read time

if ! is_number "$principal" || ! is_number "$roi" || ! is_number "$time"; then
	echo "Error: Principal, Rate of interest, and time must be numbers."
	exit 1
fi

simple_interest=$(expr "$principal" \* "$roi" \* "$time" / 100 )
echo "Simple Interest is: " "$simple_interest"

amount=$(expr "$simple_interest" + "$principal")
echo "Amount is: ""$amount"
