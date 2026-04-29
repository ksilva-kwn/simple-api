resource "random_password" "db" {
  length  = 16
  special = false
}

resource "aws_ssm_parameter" "db_password" {
  name  = "/${var.project_name}/db-password"
  type  = "SecureString"
  value = random_password.db.result

  tags = { Name = "${var.project_name}-db-password" }
}
