resource "aws_instance" "radhe" {
    subnet_id="${aws_subnet.webserver.id}"
     ami="ami-04b9e92b5572fa0d1"
     instance_type="t2.micro"
     key_name="jenkins"
     vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
     
  

}