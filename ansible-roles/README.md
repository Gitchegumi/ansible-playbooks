# Ansible Roles

This directory is a grab-bag of Ansible roles that I've written. They can be plugged into your Ansible playbooks as needed.

These can be added to an ansible playbook by adding the following to the `roles` section of your `playbook.yaml` as follows:

```yaml
---
- hosts: all
  become: true
  roles:
    - role-1
    - role-2
    - role-3
```

I recommend creating the `playbook.yaml` in a directory named `ansible` to keep things organized. Then, in this same directory, create a directory named `roles` and add the roles you need to the `roles` directory. The playbook will look for the roles in the `roles` directory based on the names you give them in the `playbook.yaml`. Make sure that the spelling and capitalization match the directory names.