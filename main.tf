terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.26.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "myec2" {
  ami           = "ami-00fdb24828509782b"
  instance_type = "t4g.micro"
}