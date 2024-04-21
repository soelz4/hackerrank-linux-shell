#!/bin/bash

declare -a countries

while read -r input; do
	countries=("${countries[@]}" "$input")
done

slice=("${countries[@]:3:5}")

echo "${slice[@]}"
