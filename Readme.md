# Kubespray Terraform AWS

Terraform creates:
- X public subnets (default 3)
- X private subnets (default 3)
- Respective NAT gateway, IGW, RT, SG, etc..
- X masters
- X workers


### To Do

[] Allow connection between masters and workers.

[] Create ELB to loadbalance between masters.

[] Create Public facing ELB for workers.
