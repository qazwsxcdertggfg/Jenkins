  terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}
provider "aws" {
  #profile = "default"
  #access_key="AKIATNOY6IAKLTKGUCLL"
  #secret_key="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"
  #region = "ap-south-1"
}

resource "aws_instance" "vm-web" {
  
  ami           = "ami-0cca134ec43cf708f"
  instance_type = "t2.micro"

  tags = {
    Name = "server for web"
    Env = "dev"
  }
}
