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
    aws.reg1 = aws.use1
    aws.reg2 = aws.usw2
  }
}
