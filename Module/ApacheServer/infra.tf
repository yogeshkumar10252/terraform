resource "aws_internet_gateway" "gw" {
    vpc_id="${aws_vpc.learn.id}"
    tags={
        Name="gw"
    }
  
}
resource "aws_route_table" "public" {
  vpc_id="${aws_vpc.learn.id}"
  route {
  
    cidr_block="0.0.0.0/0"
    gateway_id= "${aws_internet_gateway.gw.id}"
  }
}
resource "aws_route_table_association" "a" {
    subnet_id="${aws_subnet.webserver.id}"
    route_table_id="${aws_route_table.public.id}"

  
}
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.learn.id}"

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    
  }
}

