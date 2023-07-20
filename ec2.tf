data "aws_ssm_parameter" "ubuntu18804" {
  name = "/aws/service/canonical/ubuntu/server/20.04/stable/current/amd64/hvm/ebs-gp2/ami-id"
}
resource "aws_instance" "nodejs" {
  ami                    = data.aws_ssm_parameter.ubuntu18804.value
  subnet_id              = aws_subnet.subnet.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.database.id]
  private_ip             = var.database_private_ip
  key_name               = var.ec2_key_pair
  tags = {
    "Name" = "${var.default_tags.Project}-instance"
  }
}
