resource "aws_route_table" "rt-pub" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "RT-public"
  }
}
resource "aws_route_table" "rt-pri" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-gw.id
  }

  tags = {
    Name = "RT-private"
  }
}
resource "aws_route_table_association" "rt-and-sub-pub" {
  subnet_id      = aws_subnet.public-az1.id
  route_table_id = aws_route_table.rt-pub.id
}
resource "aws_route_table_association" "rt-and-sub-pri" {
  subnet_id      = aws_subnet.private-az1.id
  route_table_id = aws_route_table.rt-pri.id
}
resource "aws_route_table_association" "rt-and-sub-pub2" {
  subnet_id      = aws_subnet.public-az2.id
  route_table_id = aws_route_table.rt-pub.id
}
resource "aws_route_table_association" "rt-and-sub-pri2" {
  subnet_id      = aws_subnet.private-az2.id
  route_table_id = aws_route_table.rt-pri.id
}



