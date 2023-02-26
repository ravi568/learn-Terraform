terraform {
  backend "s3" {
    bucket = "terraform-bt71"
    key    = "05-s3-state/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0e9e4460e83575a63"]

  tags = {
    name = "demo"
  }
}