#!/bin/bash
# Create a folder named as the file but cut name-suffix off
mkdir -p ${1/.bin/}
# Store the parts with ending 01, 02, 03,... in the folder
split -a 2 --numeric-suffixes=1 -b32K $1 ${1/.bin/}/$1.
