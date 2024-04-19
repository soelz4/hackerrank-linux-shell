#!/bin/bash

declare -A a

# credits to https://github.com/MaskRay/HackerRank/blob/master/shell/fractal-trees-all.sh
# credits to https://github.com/Thomas-George-T/HackerRank-The-Linux-Shell-Challenges-Solutions
# d - depth
# l = length
# r = row
# c = column

f() {
	local d=$1 l=$2 r=$3 c=$4
	[[ $d -eq 0 ]] && return
	for ((i = l; i; i--)); do
		a[$((r - i)).$c]=1
	done
	((r -= l))
	for ((i = l; i; i--)); do
		a[$((r - i)).$((c - i))]=1
		a[$((r - i)).$((c + i))]=1
	done
	f $((d - 1)) $((l / 2)) $((r - l)) $((c - l))
	f $((d - 1)) $((l / 2)) $((r - l)) $((c + l))
}

echo -n "Input - A single integer (N <= 5) : "
read -r n
f "$n" 16 63 49
for ((i = 0; i < 63; i++)); do
	for ((j = 0; j < 100; j++)); do
		if [[ ${a[$i.$j]} ]]; then
			printf 1
		else
			printf _
		fi
	done
	echo
done
