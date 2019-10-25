output "vpc_id" {
  value = "${aws_vpc.learn.id}"
}
output "webserverid" {
  value = "${aws_subnet.webserver.id}"

}

output "dbserverid" {
  value = "${aws_subnet.dbserver.id}"
}

output "securitygroupid" {
  value = "${aws_security_group.allow_tls.id}"
}



