#!/bin/bash

declare -a countries

while read -r input; do
	countries=("${countries[@]}" "$input")
done

countries=("${countries[@]}" "${countries[@]}" "${countries[@]}")

echo "${countries[@]}"

OR

# The Above Solution is Completely Correct, but when Running on the HackerRacnk Site, the Word "Norway" is not Printed.
# So, the Second Solution that I Found on the Internet is the Desired Solution for the HackerRacnk Site.
# But as I said, the Above Solution is Correct and the Site doesn't Accept it, I don't Know why :(
# Credit to https://github.com/Thomas-George-T/HackerRank-The-Linux-Shell-Challenges-Solutions
arr=("$(cat)")
arr=("${arr[@]}" "${arr[@]}" "${arr[@]}")
echo "${arr[@]}"
