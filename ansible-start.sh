#!/bin/bash

USERNAME=your_ec2_instance_username
PRIVATE_KEY=your_private_key_name
PLAYBOOK=playbook.yml
HOSTS=hosts.yml

ansible-playbook $PLAYBOOK -u $USERNAME --private-key $PRIVATE_KEY -i $HOSTS
