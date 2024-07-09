resource "aws_spot_instance_request" "example" {
    count         = 1
    spot_price             = "0.0058"  # Replace with your desired maximum price per hour
    wait_for_fulfillment   = true

    instance_type        = "t3a.small"
    ami                  = "ami-0f58b397bc5c1f2e8"  # Replace with your AMI ID
    key_name             = "Demo-Node-1-key"    # Replace with your SSH key pair name
    subnet_id            = "subnet-03cd0a7fc123e740b"       # Replace with your subnet ID

    # Security group IDs, replace with your own security group(s)
    security_groups      = ["sg-0644ae1b9d02eb06d"]

    # Optional: IAM instance profile
    # iam_instance_profile = "AmazonEC2SpotFleetTaggingRole"
}
