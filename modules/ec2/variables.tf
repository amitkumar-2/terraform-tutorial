variable "instance_count" {
  description = "Total number of Instances"
  type = number
}

variable "ami_id" {
    description = "The ID of AMI to use for instance"
    type = string
}

variable "instance_type" {
  description = "Provide instance type to  lounch instance"
  type = string
}

variable "subnet_id" {
  description = "To launch instance in subnet id"
  type = string
}

variable "key_name" {
  description = "Attach key to SSH connection"
  type = string
}

variable "security_group_ids" {
  description = "Provide security groups"
  type = list(string)
}

variable "instance_name" {
  description = "Name of the instance"
  type = string
}
