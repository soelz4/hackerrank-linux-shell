#!/bin/bash

awk '{ total=$2+$3+$4; avg=total/3; print $0 " : " (avg>=80?"A":avg>=60?"B":avg>=50?"C":"FAIL"); }'
