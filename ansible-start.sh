#!/bin/bash

source conf.sh

ansible-playbook $PLAYBOOK -u $USERNAME --private-key $PRIVATE_KEY -i $HOSTS
