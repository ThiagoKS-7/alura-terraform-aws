#!/bin/bash

while getopts e: flag
do
	case "${flag}" in
		e) env=${OPTARG};;
	esac
done

if [ ${#env} -gt 0 ];
then
    if [ $env == "dev" ];
    then
        cd ./env/Dev
        terraform plan -out config.terraform
    fi

    if [ $env == "prod" ];
    then
        cd ./env/Prod
        terraform plan -out config.terraform
    fi
else
  echo "[ERROR] Nenhum parametro encontrado."
  echo "[INFO] Use -e para informar em qual ambiente inicializar o terraform"
fi

