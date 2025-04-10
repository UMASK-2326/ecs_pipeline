variable "vpc_id" {
  description = "VPC ID for RDS"
  type        = string
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "List of private subnets ids"
}

variable "security_group_id" {
  description = "Security group ID for the ALB"
  type        = string
}

variable "db_username" {
  description = "RDS database username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "RDS database password"
  type        = string
  sensitive   = true
}
