#!/bin/bash
read -r N
sum=0

for ((i = 0; i < N; i++)); do
	read -r num
	sum=$(("$sum" + "$num"))
done

# Sum
echo "$sum"

# Average
average=$(echo "scale=4;$sum / $N" | bc -l)
printf "%.3f\n" "$average"

OR

read -r N
i=$N
sum=0

while [ "$i" -gt 0 ]; do
	read -r num
	sum=$(("$sum" + "$num"))
	i=$(("$i" - 1))
done

# Sum
echo "$sum"

# Average
average=$(echo "scale=4;$sum / $N" | bc -l)
printf "%.3f\n" "$average"
