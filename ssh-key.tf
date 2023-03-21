resource "aws_key_pair" "aws-pub-key" {
  key_name   = var.key-name
  public_key = var.public-key
}
