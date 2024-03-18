if [ ! -d "terraform/.terraform" ]; then
    terraform -chdir=terraform init
fi
terraform -chdir=terraform apply -auto-approve
export USERNAME=$(terraform -chdir=terraform output -raw username)
export DNS_ADDRESS=$(terraform -chdir=terraform output -raw domain_name_service)

if [ -f ./.env ]; then
    rm ./.env
fi

printf "export USERNAME=%s\n" "$USERNAME" >> ./.env
printf "export IP_ADDRESS=%s\n" "$DNS_ADDRESS" >> ./.env
echo ".env file created with USERNAME and DNS_ADDRESS"

ansible-playbook ansible/playbook.yaml -u $USERNAME -i ansible/inventory.yml --ssh-common-args='-o StrictHostKeyChecking=no'
