resource "aws_eip" "myeip" {
  instance = module.ec2_instance.instance_id

}
