variable "aws_vpc" {}
variable "network" {}
variable "aws_route_table_private" {}
variable "aws_centos_ami" {}
variable "aws_key_name" {}
variable "aws_key_path" {}
variable "aws_subnet_bastion" {}
variable "hadoop_instance_count" {
        default = "5"
}
variable "hadoop_instance_type" {
        default = "m3.2xlarge"
}
