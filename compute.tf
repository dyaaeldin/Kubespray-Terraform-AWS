resource "aws_instance" "bastion" {
  ami             = var.bastion-ami
  instance_type   = var.bastion-type
  subnet_id       = module.vpc.public_subnets[1]
  security_groups = [aws_security_group.allow-ips-to-bastion.id]
  key_name        = aws_key_pair.aws-pub-key.key_name
  tags = {
    Name = "bastion"
  }
}


resource "aws_instance" "masters" {

  ami             = var.masters-ami
  instance_type   = var.masters-type
  subnet_id       = element(module.vpc.private_subnets, count.index)
  count           = var.masters-count
  security_groups = [aws_security_group.allow-ssh-from-bastion.id]
  key_name        = aws_key_pair.aws-pub-key.key_name
  tags = {
    "Name" = "master-${count.index}"
  }
}

resource "aws_instance" "workers" {
  ami             = var.workers-ami
  instance_type   = var.workers-type
  subnet_id       = element(module.vpc.private_subnets, count.index)
  count           = var.workers-count
  security_groups = [aws_security_group.allow-ssh-from-bastion.id]
  key_name        = aws_key_pair.aws-pub-key.key_name
  tags = {
    "Name" = "worker-${count.index}"
  }
}


