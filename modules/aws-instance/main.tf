terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
#      configuration_aliases = [ aws.reg1, aws.reg2 ]
    }
  }
}

resource "aws_instance" "east" {
  ami                         = var.ami_id
  instance_type               = "t3.micro"
}