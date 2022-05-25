#!/bin/bash

set -e

go install github.com/kisielk/errcheck@latest
go install golang.org/x/tools/cmd/goimports@latest
go install honnef.co/go/tools/cmd/staticcheck@latest