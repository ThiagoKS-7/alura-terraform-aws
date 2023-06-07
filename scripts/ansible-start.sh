#!/bin/bash

source conf.sh

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
        ansible-playbook $PLAYBOOK_DEV -u $USERNAME --private-key $PRIVATE_KEY_DEV -i $HOSTS
    fi

    if [ $env == "prod" ];
    then
        ansible-playbook $PLAYBOOK_PROD -u $USERNAME --private-key $PRIVATE_KEY_PROD -i $HOSTS
    fi
else
  echo "[ERROR] Nenhum parametro encontrado."
  echo "[INFO] Use -e para informar em qual ambiente inicializar o terraform"
fi
echo "[INFO] Ansible terminou!"