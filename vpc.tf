#Create VPC
resource "aws_vpc" "nodejs_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${var.default_tags.Project}-VPC"
  }
}

#Subnet
resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.nodejs_vpc.id
  cidr_block = var.private_cidr
  tags = {
    Name = "${var.default_tags.Project}-subnet"
  }
}
