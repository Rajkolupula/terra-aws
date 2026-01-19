terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my-vm" {
  ami           = "ami-02b8269d5e85954ef"   # Amazon Linux 2 (Mumbai)
  instance_type = "t2.micro"
  key_name      = "mumbai.key.pem"             # CHANGE THIS

  tags = {
    Name = "terraform-ec2"
    Env  = "dev"
  }
}

