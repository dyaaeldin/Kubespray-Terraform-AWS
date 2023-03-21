variable "region" {
  type = string
}
variable "profile" {
  type = string
}
variable "public_subnets" {
  type = list(string)
}
variable "private_subnets" {
  type = list(string)
}

variable "vpc-cidr" {
  type = string
}

variable "vpc-name" {
  type = string
}
variable "az" {
  type = list(string)
}

# Compute
variable "bastion-ami" {
  type = string
}

variable "bastion-type" {
  type = string
}

# Masters
variable "masters-ami" {
  type = string
}
variable "masters-type" {
  type = string
}
variable "masters-count" {
  type = string
}

# Workers
variable "workers-ami" {
  type = string
}
variable "workers-type" {
  type = string
}
variable "workers-count" {
  type = string
}

## SSH keys
variable "key-name" {
  type = string
}

variable "public-key" {
  type = string
}

variable "allowed-ips" {
  type = list(string)
}

variable "environment" {
  type = string
}