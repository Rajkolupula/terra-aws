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

resource "aws_instance" "vm" {
  ami           = "terraform {
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

resource "aws_instance" "vm" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name      = "mumbai.key.pem"   # MUST exist in AWS

  tags = {
    Name = "terraform-ec2"
  }
}

output "instance_public_ip" {
  value = aws_instance.vm.public_ip
}

output "instance_id" {
  value = aws_instance.vm.id
}
"
  instance_type = "t2.micro"
  key_name      = "my-keypair"   # MUST exist in AWS

  tags = {
    Name = "terraform-ec2"
  }
}

output "instance_public_ip" {
  value = aws_instance.vm.public_ip
}

output "instance_id" {
  value = aws_instance.vm.id
}


