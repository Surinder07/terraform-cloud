provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"
}

resource "aws_instance" "myserver1" {
  ami           = var.ami
  instance_type = var.instance_type
}

resource "aws_instance" "myserver2" {
  ami           = var.ami
  instance_type = var.instance_type
}


resource "aws_eip" "lb" {
  domain   = "vpc"
}

output "public_ip" {
  value = aws_eip.lb
}