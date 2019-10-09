#!/bin/bash
ansible --private-key=$( dirname ${BASH_SOURCE[0]} )/.vagrant/machines/$1/libvirt/private_key --user=vagrant --connection=ssh --inventory-file=$( dirname ${BASH_SOURCE[0]} )/.vagrant/provisioners/ansible/inventory --ssh-common-args='-o StrictHostKeyChecking=no' -m setup ${1:-all}
