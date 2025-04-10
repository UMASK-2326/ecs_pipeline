output "alb_arn" {
  description = "ARN of the Application Load Balancer"
  value       = aws_lb.ecs_alb.arn
}

output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.ecs_alb.dns_name
}

output "target_group_arn" {
  description = "ARN of the target group"
  value       = aws_lb_target_group.ecs_tg.arn
}
