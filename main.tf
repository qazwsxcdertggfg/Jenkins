terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Sahil123"
    workspaces {
      name = "sahil"
    }
  }
}

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
  AWS_ACCESS_KEY_ID="AKIATNOY6IAKLVWDFK76"
  AWS_SECRET_ACCESS_KEY="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"
  region = "ap-south-1"
}

resource "aws_instance" "vm-web" {
  
  ami           = "ami-0cca134ec43cf708f"
  instance_type = "t2.micro"

  tags = {
    Name = "server for web"
    Env = "dev"
  }
}
