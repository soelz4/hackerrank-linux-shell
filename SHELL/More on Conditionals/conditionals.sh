#!/bin/bash
# Read a Line of Input and Put into a Variable - X
echo -n "X (1 <= X <= 1000) : "
read -r X
# Validate if X is an Integer and Validate Range of X Number
if ! [[ "$X" =~ -?[0-9]+ ]] || ! [[ "$X" -ge 1 && "$X" -le 1000 ]]; then
	echo "Error - Please Select Integer Number and Correct Range of Numbers"
	exit
fi

# Read a Line of Input and Put into a Variable - Y
echo -n "Y (1 <= Y <= 1000) : "
read -r Y
# Validate if Y is an Integer and Validate Range of Y Number
if ! [[ "$Y" =~ -?[0-9]+ ]] || ! [[ "$Y" -ge 1 && "$Y" -le 1000 ]]; then
	echo "Error - Please Select Integer Number and Correct Range of Numbers"
	exit
fi

# Read a Line of Input and Put into a Variable - Z
echo -n "Z (1 <= Z <= 1000) : "
read -r Z
# Validate if Z is an Integer and Validate Range of Z Number
if ! [[ "$Z" =~ -?[0-9]+ ]] || ! [[ "$Z" -ge 1 && "$Z" -le 1000 ]]; then
	echo "Error - Please Select Integer Number and Correct Range of Numbers"
	exit
fi

# If All 3 Sides are Equal, Output EQUILATERAL
if [[ "$X" -eq "$Y" ]] && [[ "$Y" -eq "$Z" ]]; then
	echo "EQUILATERAL"
# Otherwise, if any 2 Sides are Equal, Output ISOSCELES
elif [[ "$X" -eq "$Y" ]] || [[ "$X" -eq "$Z" ]] || [[ "$Y" -eq "$Z" ]]; then
	echo "ISOSCELES"
# Otherwise, Output SCALENE
else
	echo "SCALENE"
fi
