variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-west-2"
}

variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "nginx:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 2
}

# variable "ecs_autoscale_role" {
#   description = "Role arn for the ecsAutocaleRole"
#   default     = "arn:aws:iam::734066626836:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
# }

# variable "ecs_task_execution_role" {
#   description = "Role arn for the ecsTaskExecutionRole"
#   default     = "YOUR_ECS_TASK_EXECUTION_ROLE_ARN"
# }

variable "health_check_path" {
  default = "/"
}


variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "256"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "512"
}