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