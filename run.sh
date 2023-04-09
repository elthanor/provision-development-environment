#!/usr/bin/env bash

set -xeuo pipefail

sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update && sudo apt full-upgrade -y
sudo apt install -y ansible ansible-lint
cd provisioning
ansible-galaxy collection install community.general
ansible-playbook playbook.yml -i inventory.yml