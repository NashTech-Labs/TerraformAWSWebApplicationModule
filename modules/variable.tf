variable "app_name" {
  description = "The name of the web application"
}

variable "environment" {
  description = "The environment (e.g., dev, prod)"
}

variable "instance_count" {
  description = "The number of instances in the web application"
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}
