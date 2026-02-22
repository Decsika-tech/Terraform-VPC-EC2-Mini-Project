variable "name"{
type=string
default=""
}
variable "vpc_cidr_block" {
type=string
default=""
}
variable "subnet_cidr_block" {
type=string
default=""
}
variable "instance_ami" {
type=string
default=""
}
variable "instance_type" {
type=string
default=""
}
variable "key_name" {
type=string
default=""
}
variable "availability_zone" {
type=string
default=""
}
variable "instance_count" {
type=string
default=""
}
variable "instance_user_data" {
type=string
default=""
}
