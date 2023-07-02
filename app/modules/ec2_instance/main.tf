resource "aws_instance" "myec2" {
  ami             = "ami-0c94855ba95c71c99"  # Ubuntu 18.04 LTS (Bionic)
  instance_type   = var.instance_type
  key_name        = "devops-segarane"
  tags = {
    Name = "ec2-user"
  }

  module "ebs_volume" {
  source      = "../ebs_volume"
  volume_size = var.volume_size
}

  # Attach EBS volume
  ebs_block_device {
    device_name = "/dev/sdf"
    volume_id = module.ebs_volume.ebs_volume_id
  }

  # Allocate public IP
  associate_public_ip_address = var.public_ip

  # Provisioner to install Nginx
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
      "sudo service nginx start"
    ]
  }

  # Connection settings
  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ubuntu"
    private_key = file("${path.module}/devops-segarane.pem")
  }

  vpc_security_group_ids = [module.security_group.security_group_id]

}
