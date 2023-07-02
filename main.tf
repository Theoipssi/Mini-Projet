provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

module "ec2_instance" {
  source            = "./modules/ec2_instance"
  instance_type     = var.instance_type
  public_ip         = var.public_ip
  security_group_name = var.security_group_name
  volume_id      = module.ebs_volume.ebs_volume_id
  security_group = module.security_group.security_group_id
}

module "ebs_volume" {
  source            = "./modules/ebs_volume"
  volume_size       = var.volume_size
  volume_type       = var.volume_type
}


module "public_ip" {
  source = "./modules/public_ip"
}

module "security_group" {
  source = "./modules/security_group"
  security_group_ids = [module.ec2_instance.security_group_id]
}
