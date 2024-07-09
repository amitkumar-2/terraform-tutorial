# Create EC2 Instance in the Security Group
resource "aws_instance" "example" {
  count = var.instance_count
  ami           = var.ami_id      #"ami-0f58b397bc5c1f2e8"
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name        = var.key_name
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "${var.instance_name}-${count.index}"
  }
}
