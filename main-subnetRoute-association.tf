# Associate route table with Public subnets

resource "aws_route_table_association" "main_public_association_1a" {
  subnet_id      = aws_subnet.main_vpc_public_subnet_1.id
  route_table_id = aws_route_table.Main_public_route_table.id
}


resource "aws_route_table_association" "main_public_association_1b" {
  subnet_id      = aws_subnet.main_vpc_public_subnet_2.id
  route_table_id = aws_route_table.Main_public_route_table.id
}

# Associate route table with Private subnets

resource "aws_route_table_association" "main_private_association_1a" {
  subnet_id      = aws_subnet.main_vpc_private_subnet_1.id
  route_table_id = aws_route_table.Main_private_route_table_1a.id
}

resource "aws_route_table_association" "main_private_association_1b" {
  subnet_id      = aws_subnet.main_vpc_private_subnet_2.id
  route_table_id = aws_route_table.Main_private_route_table_1a.id
}

resource "aws_route_table_association" "main_private_association_1c" {
  subnet_id      = aws_subnet.main_vpc_private_subnet_3.id
  route_table_id = aws_route_table.Main_private_route_table_1b.id
}

resource "aws_route_table_association" "main_private_association_1d" {
  subnet_id      = aws_subnet.main_vpc_private_subnet_4.id
  route_table_id = aws_route_table.Main_private_route_table_1b.id
}
