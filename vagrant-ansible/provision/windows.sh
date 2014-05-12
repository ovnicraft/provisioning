#!/bin/bash

ANSIBLE_PLAYBOOK=$1
ANSIBLE_HOSTS=$2
TEMP_HOSTS="/tmp/ansible_hosts"

if [ ! -f /vagrant/$ANSIBLE_PLAYBOOK ]; then
	echo "Cannot find Ansible playbook"
	exit 1
fi

if [ ! -f /vagrant/$ANSIBLE_HOSTS ]; then
	echo "Cannot find Ansible hosts"
	exit 2
fi

if [ ! -f /usr/bin/ansible ]; then
	echo "Updating apt cache"
	apt-get update
	echo "Installing Ansible and Dependencies"
	apt-get install -y ansible
fi

#cp /vagrant/${ANSIBLE_HOSTS} ${TEMP_HOSTS} && chmod -x ${TEMP_HOSTS}
#echo "Running Ansible provisioner defined in Vagrantfile."
#ansible-playbook --inventory-file=${TEMP_HOSTS} --private-key=~/.vagrant.d/insecure_private_key -u vagrant --extra-vars "is_windows=true" --connection=local /vagrant/${ANSIBLE_PLAYBOOK}
#rm ${TEMP_HOSTS}