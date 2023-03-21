output "bastion" {
  value = aws_instance.bastion.public_ip
}
output "masters" {
  value = aws_instance.masters.public_ip
}
output "workers" {
  value = aws_instance.workers.public_ip
}
