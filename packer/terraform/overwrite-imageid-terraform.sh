cd ..#!/bin/bash

export imageodisk=$(cat ../../Packer/Logs/packer-build-output.log | grep OSDiskUri: | awk '{print $2}')

echo $imageodisk

sed -i 's|@@IMAGEURI@@|'"$imageodisk"'|g' variables.tf

cat variables.tf