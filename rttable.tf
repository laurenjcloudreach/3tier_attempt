resource "aws_route_table" "public1" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.alltraffic
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = var.public1
  }
}

resource "aws_route_table" "private1" {
  vpc_id = aws_vpc.main.id

  route = []

  tags = {
    Name = var.private1
  }
}