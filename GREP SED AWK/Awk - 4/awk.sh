#!/bin/bash

# BEGIN and END : A BEGIN rule is executed once only, before the first input record is read. Likewise,
# an END rule is executed once only, after all the input is read.
# NR : NR command keeps a current count of the number of input records. Remember that records are usually lines.
# Awk command performs the pattern/action statements once for each record in a file.

awk 'END{ if((NR%2)) print p ";" }!(NR%2){ print p ";" $0 }{ p = $0 }'
