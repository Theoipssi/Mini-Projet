variable "aws_access_key" {
  description = "AWS access key"
}

variable "aws_secret_key" {
  description = "AWS secret key"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "volume_size" {
  description = "EBS volume size (in GB)"
  default     = 10
}

variable "public_ip" {
  description = "Whether to allocate a public IP for the EC2 instance"
  default     = true
}

variable "security_group_name" {
  description = "Name of the security group"
  default     = "web_security_group"
}
