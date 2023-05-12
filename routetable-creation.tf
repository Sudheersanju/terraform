# Create the route tables for MAIN VPC
resource "aws_route_table" "Main_public_route_table" {
  vpc_id = aws_vpc.main_vpc.id
  tags = {
    Name ="Main_Public-RouteTable"
  }
}

resource "aws_route_table" "Main_private_route_table_1a" {
  vpc_id = aws_vpc.main_vpc.id
  tags = {
    Name ="Main_private-routeTable-1"
  }
}

resource "aws_route_table" "Main_private_route_table_1b" {
  vpc_id = aws_vpc.main_vpc.id
  tags = {
    Name ="Main_private-routeTable-2"
  }
}

# Create the route tables for DATABASE VPC
resource "aws_route_table" "Database_public_route_table" {
  vpc_id = aws_vpc.database_vpc.id
  tags = {
    Name ="Database_Public-RouteTable"
  }
}

resource "aws_route_table" "Database_private_route_table_2a" {
  vpc_id = aws_vpc.database_vpc.id
  tags = {
    Name ="DataBase_Private-RouteTable-1a"
  }
}

resource "aws_route_table" "Database_private_route_table_2b" {
  vpc_id = aws_vpc.database_vpc.id
  tags = {
    Name ="Database_Private_routeTable_1b"
  }
}
