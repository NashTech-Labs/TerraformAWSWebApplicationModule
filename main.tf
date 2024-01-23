terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.7"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "web_app" {
  source = "./modules/web_app"
  app_name = var.app_name
  environment = var.environment
  instance_count = var.instance_count
  vpc_id = var.vpc_id
}

output "web_app_url" {
  value = module.web_app.url
}

# Outputs can be expanded to include more meaningful information,
# such as Load Balancer DNS name or instance IPs.


