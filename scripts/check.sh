#!/bin/bash

echo "errcheck"
errcheck ./...

echo "goimports"
goimports -w .

echo "staticcheck"
./scripts/staticcheck_all.sh

