output "bastion" {
  value = aws_instance.bastion.public_ip
}
output "masters" {
  value = aws_instance.masters
}
output "workers" {
  value = aws_instance.workers
}