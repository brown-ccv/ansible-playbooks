## Ansible Playboooks for CBC server set-up
### Server name: `pcbccit.services.brown.edu`

Note: This set up is the same as `datasci.brown.edu` and `bcbi.brown.edu`.

### Generate a SSH Key
```
ssh-keygen
```

### Add key to remote server
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
