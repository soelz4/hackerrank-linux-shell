#!/bin/bash

read -r

declare -a ints

read -r input
ints=("${ints[@]}" "$input")

echo "${ints[@]}" | tr "[:space:]" "\n" | sort | uniq -u | tr "\n" "[:space:]"
