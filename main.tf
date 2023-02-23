/*terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Sahil123"
    #token = "ryqu16NPtfdlog.atlasv1.rIzChEeqHJuoF2Cmlt7Zphnkuo6plQX1YUMjITaAFuo063lyI7oSm7NNXXIkWdVgBsU"
    workspaces {
      name = "sahil"
    }
<<<<<<< HEAD
    
  }
}*/
  
=======
    token="UKqmOZ5ZzZiKVw.atlasv1.x7QhG846ciHMLHy4b9PvpxRNNX6eIG8PNzuDUVXIflVz6e0Gk9Zs2HZ370p6v6lRqqU"
  }
}

>>>>>>> 8cc8d04643bd43cd73f5d523b8c642654f4fedd5
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
  #AWS_ACCESS_KEY_ID="AKIATNOY6IAKLVWDFK76"
  #AWS_SECRET_ACCESS_KEY="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"
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
