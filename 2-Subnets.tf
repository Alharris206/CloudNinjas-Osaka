#These are   for  public

resource "aws_subnet" "public-ap-northeast-3a" {
  vpc_id                  = aws_vpc.ninjas.id
  cidr_block              = "10.44.1.0/24"
  availability_zone       = "ap-northeast-3a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-northeast-3a"
    Service = "salvage"
    Owner   = "WeylandCorp"
    Planet  = "LV426"
  }
}

resource "aws_subnet" "public-ap-northeast-3b" {
  vpc_id                  = aws_vpc.ninjas.id
  cidr_block              = "10.44.2.0/24"
  availability_zone       = "ap-northeast-3b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-northeast-3b"
    Service = "salvage"
    Owner   = "WeylandCorp"
    Planet  = "LV426"
  }
}


resource "aws_subnet" "public-ap-northeast-3c" {
  vpc_id                  = aws_vpc.ninjas.id
  cidr_block              = "10.44.3.0/24"
  availability_zone       = "ap-northeast-3c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-northeast-3c"
    Service = "salvage"
    Owner   = "WeylandCorp"
    Planet  = "LV426"
  }
}

#these are for private
resource "aws_subnet" "private-ap-northeast-3a" {
  vpc_id            = aws_vpc.ninjas.id
  cidr_block        = "10.44.11.0/24"
  availability_zone = "ap-northeast-3a"

  tags = {
    Name    = "private-ap-northeast-3a"
    Service = "salvage"
    Owner   = "WeylandCorp"
    Planet  = "LV426"
  }
}

resource "aws_subnet" "private-ap-northeast-3b" {
  vpc_id            = aws_vpc.ninjas.id
  cidr_block        = "10.44.12.0/24"
  availability_zone = "ap-northeast-3b"

  tags = {
    Name    = "private-ap-northeast-3b"
    Service = "salvage"
    Owner   = "WeilandCorp"
    Planet  = "LV426"
  }
}


resource "aws_subnet" "private-ap-northeast-3c" {
  vpc_id            = aws_vpc.ninjas.id
  cidr_block        = "10.44.13.0/24"
  availability_zone = "ap-northeast-3c"

  tags = {
    Name    = "private-ap-northeast-3c"
    Service = "salvage"
    Owner   = "WeylandCorp"
    Planet  = "LV426"
  }
}
