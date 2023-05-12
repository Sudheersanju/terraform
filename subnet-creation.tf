# Create the public subnets for MAIN VPC
resource "aws_subnet" "main_vpc_public_subnet_1" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-west-2a"
  map_public_ip_on_launch = true
  tags = {
    Name ="MainVpc-PublicSubnet-1"
  }
}

resource "aws_subnet" "main_vpc_public_subnet_2" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-west-2b"
  map_public_ip_on_launch = true
  tags = {
    Name ="MainVpc-PublicSubnet-2"
  }
}

# Create the private subnets for MAIN VPC
resource "aws_subnet" "main_vpc_private_subnet_1" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-west-2a"
  tags = {
    Name ="MainVpc-PrivateSubnet-1"
  }
}

resource "aws_subnet" "main_vpc_private_subnet_2" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-west-2a"
  tags = {
    Name ="MainVpc-PrivateSubnet-2"
  }
}
resource "aws_subnet" "main_vpc_private_subnet_3" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "us-west-2b"
  tags = {
    Name ="Main_Private-Subnet-3"
  }
}

resource "aws_subnet" "main_vpc_private_subnet_4" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.0.6.0/24"
  availability_zone = "us-west-2b"
  tags = {
    Name ="Main_Private-Subnet-4"
  }
}

# Create the public subnets DATABASE VPC
resource "aws_subnet" "database_vpc_public_subnet_1" {
  vpc_id     = aws_vpc.database_vpc.id
  cidr_block = "10.1.1.0/24"
  availability_zone = "us-west-2a"
  map_public_ip_on_launch = true
  tags = {
    Name ="Database_Public-subnet-1"
  }
}

resource "aws_subnet" "database_vpc_public_subnet_2" {
  vpc_id     = aws_vpc.database_vpc.id
  cidr_block = "10.1.2.0/24"
  availability_zone = "us-west-2b"
  map_public_ip_on_launch = true
  tags = {
    Name ="Database_public-subnet-2"
  }

}

# Create the private subnets for DATABSE VPC
resource "aws_subnet" "database_vpc_private_subnet_1" {
  vpc_id     = aws_vpc.database_vpc.id
  cidr_block = "10.1.3.0/24"
  availability_zone = "us-west-2a"
  tags = {
    Name ="Database_private-subnet-1"
  }
}

resource "aws_subnet" "database_vpc_private_subnet_2" {
  vpc_id     = aws_vpc.database_vpc.id
  cidr_block = "10.1.4.0/24"
  availability_zone = "us-west-2a"
  tags = {
    Name ="Database_private-subnet-2"
  }
}

resource "aws_subnet" "database_vpc_private_subnet_3" {
  vpc_id     = aws_vpc.database_vpc.id
  cidr_block = "10.1.5.0/24"
  availability_zone = "us-west-2b"
  tags = {
    Name ="Database_private-subnet-3"
  }
}

resource "aws_subnet" "database_vpc_private_subnet-4" {
  vpc_id     = aws_vpc.database_vpc.id
  cidr_block = "10.1.6.0/24"
  availability_zone = "us-west-2b"
  tags = {
    Name ="Database_private-subnet-4"
  }
}
