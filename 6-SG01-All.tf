resource "aws_security_group" "ninjas-80-sg01-servers" {
  name        = "ninjas-80-sg01-servers"
  description = "ninjas-80-sg01-servers"
  vpc_id      = aws_vpc.ninjas.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "KeishasBox"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "ninjas-80-sg01-servers"
    Service = "salvage"
    Owner   = "WeylandCorp"
    Planet  = "LV426"
  }

}





resource "aws_security_group" "ninjas-443-sg02-LB01" {
  name        = "ninjas-443-sg02-LB01"
  description = "ninjas-443-sg02-LB01"
  vpc_id      = aws_vpc.ninjas.id

  ingress {
    description = "MyHomePage"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "ninjas-443-sg02-LB01"
    Service = "salvage"
    Owner   = "WeylandCorp"
    Planet  = "LV426"
  }

}
