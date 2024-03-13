#!/bin/bash

# Check that the code doesn't contain any todos
echo $FLAG
echo '$FLAG'
if [ $(grep -nro 'TODO' --exclude="*.sh" * | wc -l) -gt 0 ]
then
	exit 1 # Bad quality code
fi

# Check that the code doesn't contain the secret flag.

if [ $(grep -nro "$FLAG" * | wc -l) -gt 0 ]
then
	exit 1 # BAD PR
fi
