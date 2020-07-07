# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "$ACCESS_KEY"
  secret_key = "$SECRET_KEY"
  region = "us-east-2"
}


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "ubuntu_t2" {
  count = "4"
  ami = "ami-0a63f96e85105c6d3"
  instance_type = "t2.micro"

  tags = {
    Name = "Udacity T2"
  }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "ubuntu_m4" {
  count = "2"
  ami = "ami-0a63f96e85105c6d3"
  instance_type = "m4.large"

  tags = {
    Name = "Udacity M4"
  }
}