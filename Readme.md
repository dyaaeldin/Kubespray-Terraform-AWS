# Kubespray Terraform AWS

##### Terraform creates:
- X public subnets (default 3)
- X private subnets (default 3)
- Respective NAT gateway, IGW, RT, SG, etc..
- X masters (default 3)
- X workers (default 3)

##### Usage
1. Configure the AWS credentials
2. Update terraform.tfvars
3. apply 
```
terraform init
terraform plan
terraform apply
```


##### To Do

[x] Allow connection between masters and workers.

[] Create ELB to loadbalance between masters.

[] Create Public facing ELB for workers.
