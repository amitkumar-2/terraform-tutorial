# output "instance_id" {
#   value = aws_instance.example.ami
# }

# output "instance_id" {
#   value = "Instance_id: ${module.ec2_instance.instance_id}"
#   # value = "Instance_id: ${module.ec2_instance.instance_id}, instance_ip: ${module.ec2_instance.instance_key_name}"
#   # value = "Instance_id: ${module.ec2_instance.private_ip}"
# }

# output "key_name" {
#   value = module.ec2_instance.key_name
# }


output "instance_public_ips" {
  description = "The public IP addresses of the EC2 instances"
  value       = module.ec2_instances.instance_public_ips
}

output "instance_private_ips" {
  description = "The private IP addresses of the EC2 instances"
  value       = module.ec2_instances.instance_private_ips
}

output "keys_name" {
  description = "The kay name of the EC2 instances"
  value       = module.ec2_instances.keys_name
}


# output "spot_instance_public_ip" {
#   description = "The public IP addresses of the spot EC2 instance"
#   value       = module.ec2_spot_request.spot_instance_pubic_ip
# }