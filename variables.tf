variable "aws_region" {
  description = "AWS region"
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  default     = "ami-02b8269d5e85954ef" # Amazon Linux 2 (Mumbai)
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "EC2 Key Pair name"
  default     = "mumbai.key.pem"
}
