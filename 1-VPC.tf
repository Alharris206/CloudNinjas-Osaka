# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "ninjas" {
  cidr_block = "10.44.0.0/16"

  tags = {
    Name = "ninjas"
    Service = "salvage"
    Owner = "WeylandCorp"
    Planet = "LV426"
  }
}
