# Create the internet gateway for MAIN VPC
resource "aws_internet_gateway" "main_igw" {
  vpc_id = aws_vpc.main_vpc.id
  tags = {
    Name ="Main_IGW"
  }
}

# Create the internet gateway for DATABASE VPC
resource "aws_internet_gateway" "database_igw" {
  vpc_id = aws_vpc.database_vpc.id
  tags = {
    Name ="Database_IGW"
  }
}
