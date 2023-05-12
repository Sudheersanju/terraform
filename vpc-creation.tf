# Configure the AWS provider
provider aws {
  region = "us-west-2"
  access_key = "AKIATANGK5LOQUOGMBDE"
  secret_key = "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"
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
