#!/bin/bash
for i in {0..99}; do
	# if i % 2 = 0 then continue
	if [ $((i % 2)) -eq 0 ]; then
		continue
	fi
	echo "$i"
done
