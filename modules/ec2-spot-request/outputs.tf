output "spot_instance_pubic_ip" {
  description = "This the public ip for spot instance"
  value       = aws_spot_instance_request.example[*].public_ip
}