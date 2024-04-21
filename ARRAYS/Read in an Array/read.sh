#!/bin/bash

# Declare Array
declare -a countries

# Read from Input and Put in Array
while read -r input; do
	countries=("${countries[@]}" "$input")
done

echo "${countries[@]}"
