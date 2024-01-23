# Terraform AWS Web Application Module

This Terraform module enables you to deploy a scalable web application on Amazon Web Services (AWS). It sets up an Auto Scaling Group, Launch Template, Network Interface, and Subnet.

## Prerequisites

Before using this module, make sure you have the following prerequisites:

- [Terraform](https://www.terraform.io/) installed.
- AWS credentials configured (either via environment variables, shared credentials file, or IAM role).

## Usage

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/terraform-aws-web-app.git

2. Change into the module directory:

   ```bash
   cd terraform-aws-web-app/modules/web_app

3. Change these generic templates according to your needs.

4. Initialize the Terraform configuration:
   ```bash
   terraform init

5. Apply the changes to create the infrastructure:
   ```bash
   terraform apply
   ```
   Confirm the action by typing yes when prompted

6. Outputs
`web_app_url`: The URL of the deployed web application.
