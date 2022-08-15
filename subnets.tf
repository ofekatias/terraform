
resource "aws_subnet" "public-az1" {
   vpc_id = aws_vpc.main.id
   availability_zone =  "eu-central-1a"
   cidr_block = cidrsubnet(var.vpc_cidr,8,1)
tags = {
    Name = "sub-public1"
  }
}
resource "aws_subnet" "public-az2" {
   vpc_id = aws_vpc.main.id
   availability_zone =  "eu-central-1b"
   cidr_block = cidrsubnet(var.vpc_cidr,8,2)
tags = {
    Name = "sub-public2"
  }
}
resource "aws_subnet" "private-az1" {
   vpc_id = aws_vpc.main.id
   availability_zone =  "eu-central-1a"
   cidr_block = cidrsubnet(var.vpc_cidr,8,3)
tags = {
    Name = "sub-private1"
  }
}
resource "aws_subnet" "private-az2" {
   vpc_id = aws_vpc.main.id
   availability_zone =  "eu-central-1b"
   cidr_block = cidrsubnet(var.vpc_cidr,8,4)
tags = {
    Name = "sub-private2"
  }
}

