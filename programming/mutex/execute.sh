#!/usr/bin/env bash

echo "Should count to 10,000"

echo "Executing without mutex"
go run main.go --without-mutex

echo "Executing with mutex"
go run main.go