#!/bin/bash

declare -a countries

while read -r input; do
	countries=("${countries[@]}" "$input")
done

echo "${#countries[@]}"
