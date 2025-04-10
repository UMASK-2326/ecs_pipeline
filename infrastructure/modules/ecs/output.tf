output "ecs_cluster_id" {
  description = "ECS Cluster ID"
  value       = aws_ecs_cluster.my_ecs_cluster.id
}

output "ecs_asg_name" {
  description = "ECS Auto Scaling Group name"
  value       = aws_autoscaling_group.ecs_asg.name
}

output "ecs_service_name" {
  description = "Name of the ECS service"
  value       = aws_ecs_service.ecs_service.name
}

output "ecs_task_definition_arn" {
  description = "ARN of the ECS task definition"
  value       = aws_ecs_task_definition.ecs_task_definition.arn
}
