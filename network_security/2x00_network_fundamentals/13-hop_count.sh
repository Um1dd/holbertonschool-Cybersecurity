#!/bin/bash
traceroute -n -w 1 "$1" 2>/dev/null | awk 'NF > 1 && $1 ~ /^[0-9]+$/ {count++} END {printf "%d", count}'
