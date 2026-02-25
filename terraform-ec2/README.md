# Terraform EC2 module

This small example provisions an EC2 instance (Amazon Linux 2), a security group allowing SSH, and uploads a local public SSH key as an AWS key pair.

Quick start

1. Copy `terraform.tfvars.example` to `terraform.tfvars` and edit values as needed.
2. Initialize and apply:

```bash
terraform init
terraform plan
terraform apply
```

Notes
- Terraform will read your AWS credentials from the environment or shared config (~/.aws/credentials).
- The default `public_key_path` points to `~/.ssh/id_rsa.pub`; change it if your key is elsewhere.
