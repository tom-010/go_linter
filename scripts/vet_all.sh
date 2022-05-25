#!/bin/bash

files=$(find . -type f -name "*.go") 

exitCode=0

for file in $files
do
   go vet "$file" || exitCode=1
done

exit $exitCode
