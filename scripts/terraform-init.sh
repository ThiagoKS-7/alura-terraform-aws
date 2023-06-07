#!/bin/bash

while getopts -e: flag
do
	case "${flag}" in
		-e) env=${OPTARG};;
	esac
done

cd $pwd/infra
terraform init

if [ ${#env} -gt 0 ];
then
    if [ ${#env} == "dev" ];
    then
        cd $pwd/env/Dev
        terraform init
    fi

    if [ ${#env} == "prod" ];
    then
        cd $pwd/env/Prod
        terraform init
    fi
else
  echo "[ERROR] Nenhum parametro encontrado."
  echo "[INFO] Use -e para informar em qual ambiente inicializar o terraform"
fi
echo "[INFO] Done initializing!"