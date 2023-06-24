resource "aws_vpc" "vpc-main" {
  cidr_block = var.vpc_main_cidr_block
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.vpc-main.id
  cidr_block = var.vpc_subnet1_cidr_block
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.vpc-main.id
  cidr_block = var.vpc_subnet2_cidr_block
}

resource "aws_subnet" "subnet3" {
  vpc_id     = aws_vpc.vpc-main.id
  cidr_block = var.vpc_subnet3_cidr_block
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc-main.id
}

resource "aws_route_table" "r" {
  vpc_id = aws_vpc.vpc-main.id

  route {
    cidr_block = var.default_cidr_block
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.r.id
}
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.r.id
}
resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.subnet3.id
  route_table_id = aws_route_table.r.id
}

