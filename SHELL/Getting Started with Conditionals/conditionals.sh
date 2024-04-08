#!/bin/bash
# Read a Line of Input and Put into a Variable - X
echo -n "Please Input one Character : "
read -r X

# Yes
if [ "$X" = "y" ] || [ "$X" = "Y" ]; then
	echo YES
fi
# No
if [ "$X" = "n" ] || [ "$X" = "N" ]; then
	echo NO
fi
