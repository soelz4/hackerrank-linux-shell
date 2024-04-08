#!/bin/bash
# Read a Line of Input and Put into a Variable - X
echo -n "X : "
read -r X
# Read a Line of Input and Put into a Variable - Y
echo -n "Y : "
read -r Y

# X Less than Y
if [ "$X" -lt "$Y" ]; then
	echo "X is less than Y"
fi

# X Equal to Y
if [ "$X" -eq "$Y" ]; then
	echo "X is equal to Y"
fi

# X Greater than Y
if [ "$X" -gt "$Y" ]; then
	echo "X is greater than Y"
fi
