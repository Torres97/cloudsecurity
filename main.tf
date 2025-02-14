resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "vpc_virginia"
    name = "prueba"
    env  = "dev"
  }

}

resource "aws_vpc" "vpc_ohio" {
  cidr_block = var.ohio_cidr
  tags = {
    Name = "vpc_ohio"
    name = "prueba"
    env  = "dev"
  }
  provider = aws.ohio
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc_virginia.id
  cidr_block              = var.public_subnet
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.vpc_ohio.id
  cidr_block = var.private_subnet
}
