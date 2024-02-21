resource "aws_internet_gateway" "wdf_igw" {
  vpc_id = aws_vpc.wdf_vpc.id
}