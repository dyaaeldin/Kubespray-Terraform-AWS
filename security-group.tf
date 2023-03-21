resource "aws_security_group" "allow-ssh-from-bastion" {
  name        = "allow-ssh-from-bastion"
  description = "Allow ssh from bastion"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description = "Allow ssh from bastion"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${aws_instance.bastion.private_ip}/32"]
    self        = true
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Allow ssh from bastion"
  }
}


resource "aws_security_group" "allow-ips-to-bastion" {
  name        = "allow-ips-to-bastion"
  description = "Allow ips to bastion"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description = "Allow ips to bastion"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed-ips
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Allow ips to bastion"
  }
}