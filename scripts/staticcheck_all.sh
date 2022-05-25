#!/bin/bash

set -e

files=$(find . -type f -name "*.go") 

exitCode=0

for file in $files
do
   staticcheck "$file" || exitCode=1
done

exit $exitCode
