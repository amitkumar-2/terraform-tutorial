provider "aws" {
  region = "ap-south-1"
  access_key = "${AWS_ACCESS_KEY_ID}"
  secret_key = "${AWS_SECRET_ACCESS_KEY}"
}

# Calling the VPC module
# module "vpc" {
#   source              = "../modules/vpc"
#   cidr_block          = "10.0.0.0/16"
#   public_subnet_count = 1
#   public_subnets_cidr = ["10.0.1.0/24", "10.0.2.0/24"]
#   azs                 = ["ap-south-1a", "ap-south-1b"]
# }

# Create Security Group in the VPC
# module "security_group" {
#   source                    = "../modules/security-group"
#   security_group_name       = "example_security_group"
#   security_group_description= "Example security group"
#   vpc_id                    = module.vpc.vpc_id
#   ingress_from_port         = 22
#   ingress_to_port           = 22
#   ingress_protocol          = "tcp"
#   ingress_cidr_blocks       = ["0.0.0.0/0"]
#   egress_from_port          = 0
#   egress_to_port            = 0
#   egress_protocol           = "-1"
#   egress_cidr_blocks        = ["0.0.0.0/0"]
# }

# Create EC2 Instance in the Security Group
module "ec2_instances" {
  source              = "../modules/ec2"
  instance_name  = var.instance_name
  instance_count = var.instance_count
  ami_id              = "ami-0f58b397bc5c1f2e8"
  instance_type       = "t2.micro"
  # subnet_id           = element(module.vpc.public_subnet_ids, 0)
  subnet_id           = "subnet-03cd0a7fc123e740b"
  key_name            = "Demo-Node-1-key"
  security_group_ids  = ["sg-0644ae1b9d02eb06d"]
}


# Create spot request for ec2-Instance
# module "ec2_spot_request" {
#   source = "../modules/ec2-spot-request"
# }
