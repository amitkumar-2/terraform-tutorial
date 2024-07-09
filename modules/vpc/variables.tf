variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_count" {
  description = "The number of public subnets to create"
  type        = number
}

variable "public_subnets_cidr" {
  description = "The CIDR blocks for the public subnets"
  type        = list(string)
}

variable "azs" {
  description = "The availability zones to use"
  type        = list(string)
}
