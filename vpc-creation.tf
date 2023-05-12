# Configure the AWS provider
provider aws {
  region = "us-west-2"
  access_key = ""
  secret_key = ""
}

# Create the  MAIN VPC
resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name ="Main-VPC"
  }
}

# Create the  DATABASE VPC
resource "aws_vpc" "database_vpc" {
  cidr_block = "10.1.0.0/18"
  tags = {
    Name ="Database-VPC"
  }
}
