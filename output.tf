output "instance_id" {
value=aws_instance.myinstance[*].id
}
output "vpc_id" {
value=aws_vpc.myvpc.id
}
output "subnet_id" {
value=aws_subnet.mysubnet.id
}
