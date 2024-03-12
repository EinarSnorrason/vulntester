#!/bin/bash

# Check that the code doesn't contain the secret flag.
if [ $(grep -nro $FLAG * | wc -l) -gt 0 ]
then
	exit 1 # BAD PR! Don't expose the flag!!!
else
	exit 0 # Good quality code
fi
