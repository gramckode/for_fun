#!/usr/bin/env bash
echo $(echo 2^1000 | bc) | sed 's/\\ //g' | awk '{split($0,digits,""); sum=0; for (i=1; i <= length($0); i++){sum+=digits[i]}; print sum}'