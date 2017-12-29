#!/bin/bash

rm ./plan
cmake --clean .
cmake --build . --target product

echo "Execution plan"
cat ./plan
