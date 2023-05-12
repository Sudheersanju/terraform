# Create the NAT gateways for main vpc
resource "aws_nat_gateway" "nat_gateway_1a" {
  allocation_id = aws_eip.nat_eip_1a.id
  subnet_id     = aws_subnet.main_vpc_public_subnet_1.id
  tags = {
    Name ="Main_NatGateway-1"
  }
}

resource "aws_nat_gateway" "nat_gateway_1b" {
  allocation_id = aws_eip.nat_eip_1b.id
  subnet_id     = aws_subnet.main_vpc_public_subnet_2.id
  tags = {
    Name ="Main_NatGateway-2"
  }
}

# Create the NAT gateways for database vpc
resource "aws_nat_gateway" "nat_gateway_2a" {
  allocation_id = aws_eip.nat_eip_2a.id
  subnet_id     = aws_subnet.database_vpc_public_subnet_1.id
  tags = {
    Name ="Database_NAT-gateway-2a"
  }
}

resource "aws_nat_gateway" "nat_gateway_2b" {
  allocation_id = aws_eip.nat_eip_2b.id
  subnet_id     = aws_subnet.database_vpc_public_subnet_2.id
  tags = {
    Name ="Database_NAT-gateway-2b"
  }
}
