#!/bin/bash

# changedFiles=$(git diff --name-only HEAD~1 HEAD | grep \.go) 
changedFiles=$(git diff --name-only | grep \.go) 
newFiles=$(git diff --name-only --cached | grep \.go)
untrackedFiles=$(git ls-files --others --exclude-standard | grep \.go)

allFiles=$(echo "$changedFiles $newFiles $untrackedFiles")


exitCode=0

for file in $allFiles
do
   staticcheck "$file" || exitCode=1
done

exit $exitCode
