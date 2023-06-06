#!/bin/bash

USERNAME=ubuntu
PRIVATE_KEY=iac-alura.pem
PLAYBOOK=playbook.yml
HOSTS=hosts.yml

ansible-playbook $PLAYBOOK -u $USERNAME --private-key $PRIVATE_KEY -i $HOSTS
