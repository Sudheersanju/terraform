# Associate route table with Database Public subnets

resource "aws_route_table_association" "database_public_association_1a" {
  subnet_id      = aws_subnet.database_vpc_public_subnet_1.id
  route_table_id = aws_route_table.Database_public_route_table.id
}


resource "aws_route_table_association" "database_public_association_1b" {
  subnet_id      = aws_subnet.database_vpc_public_subnet_2.id
  route_table_id = aws_route_table.Database_public_route_table.id
}

# Associate route table with  Database Private subnets

resource "aws_route_table_association" "database_private_association_1a" {
  subnet_id      = aws_subnet.database_vpc_private_subnet_1.id
  route_table_id = aws_route_table.Database_private_route_table_2a.id
}

resource "aws_route_table_association" "database_private_association_1b" {
  subnet_id      = aws_subnet.database_vpc_private_subnet_2.id
  route_table_id = aws_route_table.Database_private_route_table_2a.id
}

resource "aws_route_table_association" "database_private_association_1c" {
  subnet_id      = aws_subnet.database_vpc_private_subnet_3.id
  route_table_id = aws_route_table.Database_private_route_table_2b.id
}

resource "aws_route_table_association" "database_private_association_1d" {
  subnet_id      = aws_subnet.database_vpc_private_subnet-4.id
  route_table_id = aws_route_table.Database_private_route_table_2b.id
}
