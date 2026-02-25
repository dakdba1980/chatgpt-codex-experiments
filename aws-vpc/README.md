AWS VPC Terraform module

This module creates a VPC with public and private subnets, an Internet Gateway, and a public route table.

Quick start:

1. Change into the module directory:

   ```bash
   cd openai-codex-experiments/aws-vpc
   ```

2. Initialize and apply (you will be prompted for approval):

   ```bash
   terraform init
   terraform apply -var 'aws_region=us-east-1'
   ```

Adjust variables in `terraform.tfvars` or pass `-var` flags as needed.
