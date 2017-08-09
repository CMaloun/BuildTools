#!/bin/bash

rm ./logs/packer-build-output.log

echo "************* execute packer build"
## execute packer build and sendout to packer-build-output file
packer build ./azure/linux/azure_linux_web.packer 2>&1 | tee ./logs/packer-build-output.log