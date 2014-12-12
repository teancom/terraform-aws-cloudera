# terraform-cf-aws-cloudera

This project aims to create one click deploy for Cloudera CDH Cluster on AWS VPC.

## Prerequisites

An existing AWS VPC with a bastion subnet, a private subnet, and a NAT instance.
You can get all of that and more by using https://github.com/cloudfoundry-community/terraform-cf-aws-vpc.
If not, you'll have to create them yourself, either manually or with your own terraform
configs.

## Using this as a module in your configs

Put a block similar to this in your existing terraform config file. This block presupposes
that you're using terraform-cf-aws-vpc, but you can put in your own values if you wish.
```
module "cloudera" {
  source = "github.com/teancom/terraforma-aws-cloudera"
  network = "${var.network}" # This is the prefix to use, like 10.10 or 192.168
  aws_centos_ami = "${lookup(var.aws_centos_ami, var.aws_region)}"
  aws_key_name = "${var.aws_key_name}"
  aws_vpc_id = "${aws_vpc_id.default.id}"
  aws_route_table_private = "${aws_route_table.private.id}"
  aws_subnet_bastion = "${aws_subnet.bastion.id}"
}
```

## Deploy Cloudera CDH using just this repo

```bash
mkdir terraform-cloudera
cd terraform-cloudera
terraform apply github.com/teancom/terraform-aws-cloudera
```

Used this way, terraform will prompt you for the various values it needs.
