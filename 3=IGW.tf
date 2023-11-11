resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.ninjas.id

  tags = {
    Name    = "ninjas_IG"
    Service = "salvage"
    Owner   = "WeylandCorp"
    Planet  = "LV426"
  }
}
