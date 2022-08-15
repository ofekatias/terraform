resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public-az1.id

  tags = {
    Name = "gw-NAT"
  }
 depends_on = [aws_internet_gateway.gw]
}
resource "aws_eip" "eip" {
  tags = {
  Name = "elastic-ip"
  } 
}
