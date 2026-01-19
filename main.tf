provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "my_vm" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "terraform-ec2-vm"
    Env  = "dev"
  }
}
