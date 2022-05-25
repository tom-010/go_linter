#!/bin/bash

echo "errcheck"
errcheck ./...

echo "goimports"
goimports -w .