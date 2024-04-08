#!/bin/bash

# Read a Line of Input and Put into a Variable - X
echo -n "X (-100 <= X <= 100) : "
read -r X
# Validate if X is an Integer and Validate Range of X Number
if ! [[ "$X" =~ -?[0-9]+ ]] || ! [[ "$X" -ge -100 && "$X" -le 100 ]]; then
	echo "Error - Please Select Integer Number and Correct Range of Numbers"
	exit
fi

# Read a Line of Input and Put into a Variable - Y
echo -n "Y (-100 <= Y <= 100 and Y != 0) : "
read -r Y
# Validate if Y is an Integer and Validate Range of Y Number and Y != 0
if ! [[ "$Y" =~ -?[0-9]+ ]] || ! [[ "$Y" -ge -100 && "$Y" -le 100 ]] || [[ "$Y" -eq 0 ]]; then
	echo "Error - Please Don't Select Zero(0) and Select Integer Number and Correct Range of Numbers"
	exit
fi

# ADD
add=$((X + Y))
echo "$add"
# SUB
sub=$((X - Y))
echo "$sub"
# PRODUCT
product=$((X * Y))
echo "$product"
# QUOTIENT
quotient=$((X / Y))
echo "$quotient"
