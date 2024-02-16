#!/bin/bash/
terraform -chdir=terraform init
terraform -chdir=terraform apply -auto-approve
export USERNAME=$(terraform -chdir=terraform output -raw username)
export IP_ADDRESS=$(terraform -chdir=terraform output -raw ip_address)
printf "export USERNAME=%s\n" "$USERNAME" >> ../.env
printf "export IP_ADDRESS=%s\n" "$IP_ADDRESS" >> ../.env
ansible-playbook ansible/playbook.yaml -u $USERNAME -i ansible/inventory.yml --ssh-common-args='-o StrictHostKeyChecking=no'
echo ".env file created with USERNAME and IP_ADDRESS"