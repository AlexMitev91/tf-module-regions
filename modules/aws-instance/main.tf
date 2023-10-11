terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
      configuration_aliases = [ aws.reg1, aws.reg2 ]
    }
  }
}

resource "aws_instance" "east" {
  ami                         = "ami-053b0d53c279acc90"
  instance_type               = "t3.micro"
  provider = aws.reg1
}

resource "aws_instance" "west" {
  ami                         = "ami-03f65b8614a860c29"
  instance_type               = "t3.micro"
  provider = aws.reg2
}