# Create route for MAIN public IGW
resource "aws_route" "main_public_route" {
  route_table_id         = aws_route_table.Main_public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main_igw.id
}

# Create route for DATABASE public IGW
resource "aws_route" "database_public_route" {
  route_table_id         = aws_route_table.Database_public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.database_igw.id
}

# create route for main private NAT-GW
resource "aws_route" "main_private_route_1a" {
  route_table_id         = aws_route_table.Main_private_route_table_1a.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.nat_gateway_1a.id
}

# create route for main private NAT-GW
resource "aws_route" "main_private_route_1b" {
  route_table_id         = aws_route_table.Main_private_route_table_1b.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.nat_gateway_1b.id
}


# Create route for DATABASE private NAT-GW
resource "aws_route" "database_private_route_2a" {
  route_table_id         = aws_route_table.Database_private_route_table_2a.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.nat_gateway_2a.id
}

# Create route for DATABASE private NAT-GW
resource "aws_route" "database_private_route_2b" {
  route_table_id         = aws_route_table.Database_private_route_table_2b.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.nat_gateway_2b.id
}
