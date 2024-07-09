variable "instance_name" {
  description = "The name prefix for the instances"
  type        = string
  default     = "example-instance"  # Provide a default value or specify this in your terraform.tfvars
}

variable "instance_count" {
  description = "The number of instances to create"
  type        = number
  default     = 1
}