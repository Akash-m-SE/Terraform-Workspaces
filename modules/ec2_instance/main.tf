provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "AMI value"
  type = string
}

variable "instance_type" {
  description = "value of instance type"
  type = string
}

resource "aws_instance" "tfworkspaceeg" {
  ami = var.ami
  instance_type = var.instance_type
}
