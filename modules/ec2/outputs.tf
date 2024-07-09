# output "instance_id" {
#   value = aws_instance.example.id
# }

# output "instance_key_name" {
#   value = aws_instance.example.key_name
# }

# output "private_ip" {
#   value = aws_instance.example.private_ip
# }


output "instance_public_ips" {
  description = "The public IP addresses of the EC2 instances"
  value       = aws_instance.example[*].public_ip
}

output "instance_private_ips" {
  description = "The private IP addresses of the EC2 instances"
  value       = aws_instance.example[*].private_ip
}
output "keys_name" {
  description = "The key name of the EC2 instances"
  value       = aws_instance.example[*].key_name
}