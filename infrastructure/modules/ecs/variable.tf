variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for ECS nodes"
  type        = string
}

variable "key_name" {
  description = "Key pair name for EC2 instances"
  type        = string
}

variable "capacity_provider_name" {
  description = "Name of the ECS capacity provider"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for ECS Cluster"
  type        = string
}

variable "public_subnet_ids" {
  description = "Public Subnets for ECS instances"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security Group for ECS EC2 instances"
  type        = string
}

variable "target_group_arn" {
  description = "Target group ARN for ALB"
  type        = string
}
