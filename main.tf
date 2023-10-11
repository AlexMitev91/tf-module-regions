terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  alias  = "use1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "usw2"
  region = "us-west-2"
}

module "aws_instance_use1"{
  source   = "./modules/aws-instance"
  ami_id           = "ami-053b0d53c279acc90"
    providers = {
    aws = aws.use1
  }
}

module "aws_instance_usw2"{
  source   = "./modules/aws-instance"
  ami_id           = "ami-03f65b8614a860c29"
    providers = { 
    aws = aws.usw2
  }
}
