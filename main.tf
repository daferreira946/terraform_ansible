terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "sa-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08af887b5731562d3"
  instance_type = "t2.micro"
  key_name = "iac-alura"
  tags = {
    Name = "Primeira instancia"
  }
}