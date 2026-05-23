#!/bin/bash
IFS=. read -r r1 r2 r3 r4 <<< "$1"; for i in $r1 $r2 $r3 $r4; do out+="$(printf "%08d." $(echo "obase=2; $i" | bc))"; done; echo "${out%.*}"
