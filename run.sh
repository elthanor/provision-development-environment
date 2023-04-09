#!/usr/bin/env bash

set -xeuo pipefail

sudo apt update && sudo apt full-upgrade -y
sudo apt install -y ansible-core
cd provisioning
ansible-playbook playbook.yml -i inventory.yml