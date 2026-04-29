output "alb_endpoint" {
  description = "Endpoint da API — use para acessar / e /connect"
  value       = "http://${aws_lb.main.dns_name}"
}

output "ecr_repository_url" {
  description = "URL do ECR para o docker push"
  value       = aws_ecr_repository.app.repository_url
}

output "rds_endpoint" {
  description = "Endpoint interno do RDS (não exposto publicamente)"
  value       = aws_db_instance.postgres.address
  sensitive   = true
}

