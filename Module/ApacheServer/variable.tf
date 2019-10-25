variable "access1_key" {
    type="string"
     default = "AKIA2H4I6ESUERKC3MQC"
}
variable "secret1_key" {
    type="string"
    default ="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"
  
}

variable "region1" {
  type = "string"
  default = "us-east-1"
}

variable "vpc_cidr" {
    type = "string"
    default = "10.10.0.0/16"
}
variable "webserver_cidr" {
    type = "string"
    default = "10.10.0.0/24"
}

variable "dbserver_cidr" {
    type = "string"
    default = "10.10.1.0/24"
  
}




