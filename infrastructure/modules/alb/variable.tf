variable "alb_name" {
  description = "The name of the Application Load Balancer"
  type        = string
}

variable "target_group_name" {
  description = "The name of the target group"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the ALB"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security group ID for the ALB"
  type        = string
}