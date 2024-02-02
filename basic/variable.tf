variable "instance_name" {
   description = "Production"
   type = string
   default = "Jenkins_Server"
}
variable "ec2_type" {
   description = "Small build server"
   type =  string
   default = "t2.micro"
}
variable "user_data" { 
}
variable "ami_id" {
   description = "predefined ec2 type"
   type = string
   default = "ami-007868005aea67c54"
}