resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "public" {
  count             = var.public_subnet_count
  vpc_id            = aws_vpc.main.id
  cidr_block        = element(var.public_subnets_cidr, count.index)
  availability_zone = element(var.azs, count.index)
}
