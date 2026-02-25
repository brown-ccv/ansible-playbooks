## Ansible Playboooks for CBC server set-up
 
![Static Badge](https://img.shields.io/badge/ARCHIVED-red)

**This repo was archived February 2026, due to inactivity.**

### Server name: `pcbccit.services.brown.edu`

Note: This set up is the same as `datasci.brown.edu` and `bcbi.brown.edu`.

### Generate a SSH Key
To run Ansible Playbooks you must first generate a ssh key locally and add to the remote server.

##### On your local machine:

Generate the SSH key:
```
ssh-keygen
```

Add the key to the server:
```
ssh-copy-id -i ~/.ssh/mykey user@pcbccit.services.brown.edu
```


### Install Ansible locally
```
pip install ansible
```

### Run Ansible Playbooks
```
ansible-playbook playbook.yaml -K (or --ask-become-pass) [--tags "tag1,tag2"]
```
