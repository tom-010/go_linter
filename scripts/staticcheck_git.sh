#!/bin/bash

set -e

changedFiles=$(git diff --name-only HEAD~1 HEAD | grep \.go) 
newFiles=$(git diff --name-only --cached | grep \.go)

allFiles=$(echo "$changedFiles $newFiles")


exitCode=0

for file in $allFiles
do
   echo $file
   staticcheck "$file" || exitCode=1
done

exit $exitCode
