resource "aws_ebs_volume" "myebs" {
  availability_zone = var.availability_zone
  size              = var.volume_size
}
