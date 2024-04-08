#!/bin/bash
# Read a Line of Input and Put into a Variable - X
echo -n "Mathematical Expression : "
read -r X
# bc = basic calculator binary
# bc command is used for command line calculator
res=$(echo "scale=4;$X" | bc -l)
printf "%.3f\n" "$res"
# Bottom Line is True but the only Problem is not Rounded
# echo "scale=3;$X" | bc -l
