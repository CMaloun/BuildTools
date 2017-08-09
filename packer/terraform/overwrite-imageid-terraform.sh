#!/bin/bash

export imageodisk=$(cat packer-build-output.log | grep OSDiskUri: | awk '{print $2}')

echo $imageodisk