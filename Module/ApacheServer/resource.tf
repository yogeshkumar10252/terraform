resource "aws_vpc" "learn" {
    cidr_block="${var.vpc_cidr}"
    tags = {
        Name ="learn"
    }
  
}
resource "aws_subnet" "webserver" {
    vpc_id="${aws_vpc.learn.id}"
    cidr_block="${var.webserver_cidr}"
    tags = {
        Name = "webserver"
    }
  
}
resource "aws_subnet" "dbserver" {
    vpc_id="${aws_vpc.learn.id}"
    cidr_block="${var.dbserver_cidr}"
    tags = {
        Name ="dbserver"
    }
  
}