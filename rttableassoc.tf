resource "aws_route_table_association" "pub1" {
  subnet_id      = aws_subnet.publicone.id
  route_table_id = aws_route_table.public1.id
}

resource "aws_route_table_association" "pub2" {
  subnet_id      = aws_subnet.publictwo.id
  route_table_id = aws_route_table.public1.id
}

resource "aws_route_table_association" "priv1" {
  subnet_id      = aws_subnet.privateone.id
  route_table_id = aws_route_table.private1.id
}

resource "aws_route_table_association" "priv2" {
  subnet_id      = aws_subnet.privatetwo.id
  route_table_id = aws_route_table.private1.id
}