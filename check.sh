#!/bin/bash
# Exit the script if any commands return with non-zero code
set -e
# DO NOT MODIFY ANY OF THE LINES ABOVE
mkdir -p bin

gcc -Wall -Werror -std=c99 -lm src/ex2q1.c -o bin/ex2q1

for testcase in Testcases/2-*-input.txt; do

    base=$(basename "$testcase" -input.txt)
    

    ./bin/ex2q1 < "$testcase" >| "Testcases/${base}-student.txt"
    

    diff -u "Testcases/${base}-output.txt" "Testcases/${base}-student.txt"
done
