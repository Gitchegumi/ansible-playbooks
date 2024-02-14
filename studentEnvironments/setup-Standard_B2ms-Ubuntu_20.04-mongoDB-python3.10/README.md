# How to use this playbook

This playbook is designed to set up a MongoDB server in accordance with the instructions from week 5 of the AI2C AI Technitian course. It will set up a Python 3.10 evironment with a venv, and install the `pymongo` package. It will also install MongoDB and set up a database and collection.

## Before you get started

- Clone the repository and navigate to the location you cloned it to.
- Open the `variables.tf` file and populate the `laptop_public_key`, `laptop_WSL_public_key`, `desktop_public_key`, and `desktop_WSL_public_key` with your own public keys. You might have fewer, you might have more. Use the format from the exisiting variables to create more if you need to. These keys will allow you to ssh into the VM without using a password so add public keys for what ever computer(s) you plan to ssh from.

## Running the playbook

These commands should be run on your local machine from the `setup-Standard_B2ms-Ubuntu_20.04-mongoDB-python3.10` directory. The scripts contain language that will navigate the folders as needed. Do not change the file structure unless you know what you are doing. Or do, I'm not your dad.

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
> printf "export USERNAME=%s\n" "$USERNAME" >> ../.env
> printf "export IP_ADDRESS=%s\n" "$IP_ADDRESS" >> ../.env
> ansible-playbook ansible/playbook.yaml -u $USERNAME -i ansible/inventory.yml --ssh-common-args='-o StrictHostKeyChecking=no'
> echo ".env file created with USERNAME and IP_ADDRESS"
> ```
> 
> As such, you should only need to run it once. If you need to run just the ansible command, I have included `ansible.sh` to reduce typing/remembering.