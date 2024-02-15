# Blank Template

This is a blank template for creating new dev enbironments with Terraform and Ansible.

```bash
[Azure VM](./setup-Azure-VM/)  
|- setup-Azure-VM/  
|  |- terraform/  
|  |  |- main.tf  
|  |  |- variables.tf  
|  |  |- output.tf  
|  |  |- providers.tf  
|  |- ansible/  
|  |  |- playbook.yaml  
|  |  |- inventory.yml #gets created by terraform  
|  |  |- roles/  
|  |  |  |- get-documents # A role to get needed documents for an assignment  
|  |  |  |  |- tasks/  
|  |  |  |  |  |- main.yml  
|  |  |  |- install-python # A role to install python  
|  |  |  |  |- tasks/  
|  |  |  |  |  |- main.yml  
|  |  |  |- major-packages # A role to install bigger programs like MongoDB, MySQL, etc.  
|  |  |  |  |- tasks/  
|  |  |  |  |  |- main.yml  
|  |  |  |- setup-python-env # A role to set up a python environment  
|  |  |  |  |- tasks/  
|  |  |  |  |  |- main.yml  
|  |- ansible.sh # A script to run the ansible playbook by itself. Use this to troubleshoot if your initial setup fails. setup.sh should be run first to establish environment variables.  
|  |- setup.sh # A script to run the terraform and ansible commands in order. Use this to set up the environment all in one shebang.
```  