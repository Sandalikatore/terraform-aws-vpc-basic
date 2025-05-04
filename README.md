# terraform-aws-vpc-basic

A simple Terraform module to create an AWS VPC, Subnet, and EC2 instance.

## Usage

```hcl
module "basic_vpc" {
  source = "github.com/Sandalikatore/terraform-aws-vpc-basic"

  region           = "ap-south-1"
  vpc_cidr         = "10.0.0.0/16"
  vpc_name         = "my-vpc"
  subnet_cidr      = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  subnet_name      = "my-subnet"
  ami_id           = "ami-07f019f2818b6c5fd"
  instance_type    = "t2.micro"
  instance_name    = "my-ec2"
}
