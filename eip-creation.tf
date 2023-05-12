# Create the Elastic IPs for NAT gateways for MAIN VPC
resource "aws_eip" "nat_eip_1a" {
  vpc = true
}

resource "aws_eip" "nat_eip_1b" {
  vpc = true
}

# Create the Elastic IPs for NAT gateways for DATABASE VPC
resource "aws_eip" "nat_eip_2a" {
  vpc = true
}

resource "aws_eip" "nat_eip_2b" {
  vpc = true
}
