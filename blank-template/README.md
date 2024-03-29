# Boilerplates

This is a blank template for creating new dev environments with Terraform and Ansible.

[Azure VM](./setup-Azure-VM/)

```bash
├── ansible
│   ├── playbook.yaml
│   ├── inventory.yml #gets created by terraform, it is not currently in the repo
│   └── roles
│       ├── get-documents # A role to get needed documents for an assignment
│       │   └── tasks
│       │       └── main.yml
│       ├── install-python # A role to install python
│       │   └── tasks
│       │       └── main.yml
│       ├── major-packages # A role to install bigger programs like MongoDB, MySQL, etc.  
│       │   └── tasks
│       │       └── main.yml
│       └── setup-python-environment # A role to set up a python environment 
│           └── tasks
│               └── main.yml
├── ansible.sh # A script to run the ansible playbook by itself. Use this to troubleshoot if your initial setup fails. setup.sh should be run first to establish environment variables.
├── setup.sh # A script to run the terraform and ansible commands in order. Use this to set up the environment all in one shebang.
└── terraform
    ├── main.tf
    ├── output.tf
    ├── providers.tf
    └── variables.tf # change variables as necessary

11 directories, 11 files
```
