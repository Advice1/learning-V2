terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
provider "aws" {
  region = "us-east-1"
  access_key =  ${{ secrets.AWS_ACCESS_KEY }} #authentication
  secret_key = ${{ secrets.AWS_ACCESS_SECRET_KEY }}
}

resource "aws_instance" "AutoSever" {
  ami = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"

  tags = {
    Name = "Automatic Server"
  }
}
