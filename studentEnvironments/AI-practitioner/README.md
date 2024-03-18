# How to use this playbook

This playbook is designed to set up a standard dev environment with dependecies from a `requirements.txt` file provided by the handout.

## Before you get started

- Clone this repository and navigate to the `setup` directory within it.
- Open the `/terraform/public_keys` file and populate it with your own public keys. Place one key per line.

## Running the playbook

These commands should be run on your local machine from the `AI-pracitioner-unit-1` directory. The scripts contain language that will navigate the folders as needed. Do not change the file structure unless you know what you are doing. Or do, I'm not your dad.

Run the following to set up the environment:

```bash
chmod +x setup.sh
source ./setup.sh
ssh $USERNAME@$IP_ADDRESS
```

> NOTE - if you use the VS Code remote connection extension, you might want to skip the `ssh` command. It will be done for you, and it will set up a link so that you can get directory navigation through the GUI.  
> `setup.sh` will run the following:
>
> ```bash
> terraform -chdir=terraform init
> terraform -chdir=terraform apply -auto-approve
> export USERNAME=$(terraform -chdir=terraform output -raw username)
> export IP_ADDRESS=$(terraform -chdir=terraform output -raw ip_address)
> printf "export USERNAME=%s\n" "$USERNAME" >> ./.env
> printf "export IP_ADDRESS=%s\n" "$IP_ADDRESS" >> ./.env
> ansible-playbook ansible/playbook.yaml -u $USERNAME -i ansible/inventory.yml --ssh-common-args='-o StrictHostKeyChecking=no'
> echo ".env file created with USERNAME and IP_ADDRESS"
> ```
>
> As such, you should only need to run it once. If you need to run just the ansible command, I have included `ansible.sh` to reduce typing/remembering.
