# General Conf
region  = "us-east-1"
profile = "default"
environment = "prod"

# Network Conf
vpc-name        = "kubespray"
vpc-cidr        = "10.0.0.0/16"
az              = ["eu-east-1a", "eu-east-1b", "eu-east-1c"]
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
public-key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCxZ3hr2gbB1RyJQfV4uc3n1hLGpwVXrme2bbUMzE9gfCPG9f5OCBLqVDQltbrA7KwOV2664AQOqUQxKqnH8Gr9SvH0S5dNYKI8WDPZWIU74MVjWg85YWr5ecKUDOhGWnvmZWYT6jKHVg2Y0oMrWiNmL1gojHFeEgAESsn+zncYqRQ7oPng6PNCiyQWq3lIuyKeKgitWIj+CwIJ23DWnVg2DbCI9VuMLafAVSX8uE68uOpWxw5xMwAkpjL2Omf3CZq4BAQjjDs7PKRQcgOs2gZNweOflhDLCAGbMToa84YpaSyMGY17wP1k6M3/tFeG0yLdDtyH7dZLugi1alE0hCLDwVKVXJgSJY7MKi3po86s6YeuIUqOJlBt7lsYMqoX3veEiLqHqVBUWWdfSYksv3w8VWqFfFJTjezNW5olRIUcUNAQ+I2KW+v5qOAeEzBZRlU0ulqBuk1V+t+HO80tPTMBiScnnC+kOefFmc5/f0uOa/OJfclCvIKq+Z7BfR41uuM= dyaa@container-tools.dyaa.local"