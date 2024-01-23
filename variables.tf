variable "aws_region" {
  description = "The AWS region for deployment"
  type        = string
  default     = "us-west-2"  # Optional default value
}

variable "app_name" {
  description = "The name of the web application"
}

variable "environment" {
  description = "The environment (e.g., dev, prod)"
}

variable "instance_count" {
  description = "The number of instances in the web application"
  default = 2
}

variable "vpc_id" {
  description = "The ID of the VPC for the web application"
}


