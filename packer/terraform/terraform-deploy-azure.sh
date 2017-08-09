#!/bin/bash

rm terraform-build-output.log

echo "************* execute terraform build"
terraform init

## execute terraform build and sendout to terraform-build-output file
terraform apply 2>&1 | tee terraform-build-output.log