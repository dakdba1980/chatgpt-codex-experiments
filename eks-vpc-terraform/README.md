# EKS cluster with VPC module

This example creates an EKS cluster using the `terraform-aws-modules/vpc/aws` VPC module and the `terraform-aws-modules/eks/aws` EKS module.

Quick start:

1. Copy `terraform.tfvars.example` to `terraform.tfvars` and edit values.
2. Initialize and apply:

```bash
terraform init
terraform apply -var-file="terraform.tfvars"
```

After apply, outputs include `cluster_name`, `cluster_endpoint`, and `cluster_certificate_authority_data`.

If you want me to run `terraform init` and show the plan, tell me and I will run it for you.
