//resource "aws_instance" "Demo-Ubuntu" {
//    ami = "ami-0f58b397bc5c1f2e8"
//    instance_type = "t2.micro"
//    
//    tags = {
//        Name = "ec2-created-from-terraform"
//    }
//}


//########################## Launch instance with key and security group #######################

//resource "aws_instance" "Demo-Ubuntu" {
//    ami = "ami-0f58b397bc5c1f2e8"
//    instance_type = "t2.micro"

//    key_name        = "Demo-Node-1-key"  
//    vpc_security_group_ids = ["sg-0644ae1b9d02eb06d"]
    
//    tags = {
//        Name = "ec2-created-from-terraform"
//   }
//}


//###########################################
data "aws_ebs_volumes" "example" {
  filter {
    name = "size"
    values = ["8", "20"]
    }
}

output "example" {
  value = data.aws_ebs_volumes.example.ids
}
