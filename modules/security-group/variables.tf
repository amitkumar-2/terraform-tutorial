variable "security_group_name" {
  description = "Name for the security group"
  type = string
}

variable "security_group_description" {
  description = "The description of the security group"
  type = string
}

variable "vpc_id" {
  description = "vpc_id for security group"
  type = string
}

variable "ingress_from_port" {
    description = "To allow port access from aoutside"
    type = number
}

variable "ingress_to_port" {
  description = "To allow port number from instance to outside"
  type = number
}

variable "ingress_protocol" {
  description = "The protocol for the ingress rule (e.g., tcp, udp)"
  type = string
}

variable "ingress_cidr_blocks" {
  description = "A list of CIDR block for the ingress rule"
  type = list(string)
}

variable "egress_from_port" {
  description = "The start port for the egress rule"
  type        = number
}

variable "egress_to_port" {
  description = "The end port for the egress rule"
  type        = number
}

variable "egress_protocol" {
  description = "The protocol for the egress rule (e.g., tcp, udp)"
  type        = string
}

variable "egress_cidr_blocks" {
  description = "A list of CIDR blocks for the egress rule"
  type        = list(string)
}