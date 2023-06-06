#!/bin/bash
while getopts n: flag
do
	case "${flag}" in
		n) name=${OPTARG};;
	esac
done

if [  ${#name} -gt 0 ];
then
    terraform state rm aws_security_group.$name
else
  echo "[ERROR] Nenhum parametro encontrado."
  echo "[INFO] Use a flag -n para informar nome do security group para remover"
fi