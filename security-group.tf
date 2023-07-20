# Security Group for Database Server
resource "aws_security_group" "database" {
  name_prefix = "${var.default_tags.Project}-database"
  description = "Database security group."
  vpc_id      = aws_vpc.nodejs_vpc.id
}
resource "aws_security_group_rule" "database_allow_outbound" {
  security_group_id = aws_security_group.database.id
  type              = "egress"
  protocol          = "-1"
  from_port         = 0
  to_port           = 0
  cidr_blocks       = ["0.0.0.0/0"]
  description       = "Allow any outbound traffic."
}
