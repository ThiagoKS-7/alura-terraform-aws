#!/bin/bash

source conf.sh

terraform state show aws_security_group.$SG_NAME
