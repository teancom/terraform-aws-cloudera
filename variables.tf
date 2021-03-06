variable "aws_vpc_id" {}
variable "network" {}
variable "aws_route_table_private_id" {}
variable "aws_centos_ami" {}
variable "aws_key_name" {}
variable "aws_key_path" {}
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_subnet_bastion" {}
variable "hadoop_instance_count" {
        default = "5"
}
variable "hadoop_instance_type" {
        default = "m3.2xlarge"
}
