#!/bin/bash

# -r -> Use Extended REGEX
# {4} -> Number Have 4 Digits
sed -r "s/[0-9]{4}[ ]/**** /g"
