#!/bin/bash

while getopts -e: flag
do
	case "${flag}" in
		-e) env=${OPTARG};;
	esac
done

rt=/home/thiago/devops/alura-terraform-aws

cd $rt/infra
terraform init

# cd $rt/infra/modules/ec2
# terraform init

# cd $rt/infra/modules/key_pairs
# terraform init

# cd $rt/infra/modules/security_groups
# terraform init

if [ ${#env} -gt 0 ];
then
    if [ ${#env} == "dev" ];
    then
        cd $rt/env/Dev
        terraform init
    fi

    if [ ${#env} == "prod" ];
    then
        cd $rt/env/Prod
        terraform init
    fi
else
  echo "[ERROR] Nenhum parametro encontrado."
  echo "[INFO] Use -e para informar em qual ambiente inicializar o terraform"
fi
echo "[INFO] Done initializing!"