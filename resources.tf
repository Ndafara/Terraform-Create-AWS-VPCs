resource "aws_instance" "private-instance" {
  ami           = "ami-00aa9d3df94c6c354"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private-subnet-1.id
  tags = {
    Name = "private-instance"
  }
}

resource "aws_instance" "public-instance" {
  ami           = "ami-09fd16644beea3565"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public-subnet-1.id
  tags = {
    Name = "public-instance"
  }
}