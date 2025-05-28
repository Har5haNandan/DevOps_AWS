resource "aws_vpc" "demo_vpc" {
  cidr_block = "10.1.0.0/16"
  tags = {
    name = "SecondVPC"
  }
}

resource "aws_internet_gateway" "demo_igw" {
  vpc_id = aws_vpc.demo_vpc.id
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.demo_vpc.id
  cidr_block              = "10.1.0.0/18"
  availability_zone       = "ap-south-1a"  
 }

resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.demo_vpc.id
  cidr_block              = "10.1.64.0/18"
  availability_zone       = "ap-south-1b"  
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.demo_vpc.id
}

resource "aws_route" "public_route"{
    route_table_id = aws_route_table.public_rt.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo_igw.id
}

resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}



