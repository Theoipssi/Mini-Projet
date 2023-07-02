output "ec2_public_ip" {
  value = module.public_ip.public_ip
}

output "ebs_volume_id" {
  value = module.ebs_volume.ebs_volume_id
}
