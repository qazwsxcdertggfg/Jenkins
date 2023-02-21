terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Sahil123"
    workspaces {
      name = "gh-actions-demo"
    }
  }
}


# .terraformrc
credentials "app.terraform.io" {
  token = "ryqu16NPtfdlog.atlasv1.rIzChEeqHJuoF2Cmlt7Zphnkuo6plQX1YUMjITaAFuo063lyI7oSm7NNXXIkWdVgBsU"
  # this being a team or user token (not an organisation token)
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
  profile = "default"
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
