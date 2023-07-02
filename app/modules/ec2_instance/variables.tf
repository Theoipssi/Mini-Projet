variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "public_ip" {
  description = "Whether to allocate a public IP for the EC2 instance"
  default     = true
}

variable "security_group_name" {
  description = "Name of the security group"
  default     = "web_security_group"
}
