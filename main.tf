provider "aws" {
  region = "us-east-1"
  access_key = "AKIA3EF2APX3272A6VXV"               #authentication
  secret_key ="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"
}

resource "aws_instance" "AutoSever" {
  ami = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"

  tags = {
    Name = "Automatic Server"
  }
}