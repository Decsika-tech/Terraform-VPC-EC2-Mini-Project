name="Project"
vpc_cidr_block="192.168.0.0/16"
subnet_cidr_block="192.168.1.0/24"
instance_ami="ami-051a31ab2f4d498f5"
instance_type="t3.micro"
key_name="1030class"
availability_zone="ap-south-1a"
instance_count="2"
instance_user_data= <<-EOF
                  #!/bin/bash
                  yum install httpd -y
                  systemctl start httpd
                  EOF  
