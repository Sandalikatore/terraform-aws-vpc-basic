provider "aws" {
  region = var.region
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone
  tags = {
    Name = var.subnet_name
  }
}

resource "aws_instance" "main" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main.id

  tags = {
    Name = var.instance_name
  }
}
