# General Conf
region      = "us-east-1"
profile     = "default"
environment = "prod"

# Network Conf
vpc-name        = "kubespray"
vpc-cidr        = "10.0.0.0/16"
az              = ["us-east-1a", "us-east-1b", "us-east-1c"]
public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]


## Allowed ips 
allowed-ips = ["0.0.0.0/0"]

### Compute 
# Bastion
bastion-ami  = "ami-006dcf34c09e50022"
bastion-type = "t2.micro"

# Masters
masters-ami   = "ami-006dcf34c09e50022"
masters-type  = "t2.micro"
masters-count = "3"

# Workers
workers-ami   = "ami-006dcf34c09e50022"
workers-type  = "t2.micro"
workers-count = "2"



## SSH keys
key-name   = "dyaa-key-1"
public-key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDeUhOOOLSr7P77LuGULisyyStabKODEimRjFvre2I0uuuE271gxBJr8xWi9On9bjqEmxhsHpjXoV+lFErMQZhYkdSENuSL/k7mH+1hyG6hi2lPgMu1x7lxfmQhLebNqpry5L5KqxpbgFEM8y3LKcxcMxGxNzPCRQVjcujodDQN5/bbn1O8Ubj1+VbBDC6kPMQ8G70nWQ0+0YNSU0lFhEMOvP5LRtXlfjW9ZAUPpgsx3s4rcsbQ4A2bMyfDJ9uCI9eAJPAgQGctCmGIWZiEuKJiXq61LW/or8yFxeYszRSk054A0Hfc04Z58mCCM+HR+KZ/VSNx6t4sIJJ/Dx7GNppIeM4rYoUR+M3f05CnXfWOSMHr9USh37puwaVdLLVokWNqPWgMZ6LVTy9SYbp+qtje1UUDilw/ewX2tDe26hs3NyAXGYph8vBJ3aK92I4mNiKwdyjDvuk1CChpgckDkkj+qBN0dVUP+EYJwrJu/tH7zYYohlYpTl9fWHNj9pqizik= dyaa@container-tools.dyaa.local"