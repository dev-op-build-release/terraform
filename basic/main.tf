# Provider block
provider "aws" {
    profile = "default"
    region =  "us-east-1"
}
# Resources Block
resource "aws_instance" "app_server" {
    ami = var.ami_id
    instance_type = var.ec2_type
    tags = {
       Name = var.instance_name
    }
    user_data = base64encode(templatefile("${path.module}/templates/apache.tpl",{}))
}
resource "aws_security_group" "sg" {
    name        = "sg"
    description = "Web Security Group for HTTP"

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks =["0.0.0.0/0"]
    }
    tags = {
        Name = "apache-sg"
    }
}