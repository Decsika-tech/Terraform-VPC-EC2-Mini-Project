locals {
env=var.name
}

resource "aws_vpc" "myvpc" {
cidr_block=var.vpc_cidr_block
tags= {
Name="${local.env}-VPC"
}
}

resource "aws_subnet" "mysubnet" {
vpc_id=aws_vpc.myvpc.id
cidr_block=var.subnet_cidr_block
availability_zone=var.availability_zone
tags={
Name="${local.env}-Subnet"
}
}

resource "aws_instance" "myinstance" {
count=var.instance_count
key_name=var.key_name
ami=var.instance_ami
instance_type=var.instance_type
subnet_id=aws_subnet.mysubnet.id
user_data=var.instance_user_data
tags={
Name="${local.env}-Instance"
}
}




