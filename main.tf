terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "myec2" {
    ami = "ami-052efd3df9dad4825"
    instance_type = "t3.micro"
}