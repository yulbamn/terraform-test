provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "app" {
  instance_type     = "t2.micro"
  availability_zone = "us-east-2a"
  ami               = "ami-0fb653ca2d3203ac1"

  tags = {
    Name = "terraform-example"
  }
}
