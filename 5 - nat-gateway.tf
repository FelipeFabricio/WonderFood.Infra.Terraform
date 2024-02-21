resource "aws_eip" "wdf_nat_eip" {
}

resource "aws_nat_gateway" "wdf_nat" {
  allocation_id = aws_eip.wdf_nat_eip.id
  subnet_id     = aws_subnet.public_us_east_1a.id

  depends_on = [aws_internet_gateway.wdf_igw]
}