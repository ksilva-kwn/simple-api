variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Nome do projeto, usado para nomear recursos"
  type        = string
  default     = "kxc-simple-api"
}

variable "environment" {
  description = "Nome do ambiente"
  type        = string
  default     = "prod"
}

variable "db_name" {
  description = "Nome do banco de dados PostgreSQL"
  type        = string
  default     = "simpleapi"
}

variable "db_username" {
  description = "Usuário master do PostgreSQL"
  type        = string
  default     = "apiuser"
}

variable "container_port" {
  description = "Porta exposta pelo container"
  type        = number
  default     = 3000
}

variable "ecs_cpu" {
  description = "CPU do ECS task em units (256 = 0.25 vCPU)"
  type        = number
  default     = 256
}

variable "ecs_memory" {
  description = "Memória do ECS task em MB"
  type        = number
  default     = 512
}

variable "ecs_desired_count" {
  description = "Número inicial de tasks ECS"
  type        = number
  default     = 1
}

variable "ecs_min_capacity" {
  description = "Mínimo de tasks ECS (auto scaling)"
  type        = number
  default     = 1
}

variable "ecs_max_capacity" {
  description = "Máximo de tasks ECS (auto scaling)"
  type        = number
  default     = 5
}
