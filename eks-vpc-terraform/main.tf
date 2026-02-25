module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = ">= 3.0"

  name                 = "${var.cluster_name}-vpc"
  cidr                 = var.vpc_cidr
  azs                  = ["${var.aws_region}a", "${var.aws_region}b"]
  private_subnets      = var.private_subnets
  public_subnets       = var.public_subnets
  enable_nat_gateway   = true
  single_nat_gateway   = true

  public_subnet_tags = {
    "kubernetes.io/role/elb" = "1"
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "1"
  }
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = ">= 19.0"

  cluster_name    = var.cluster_name
  cluster_version = var.k8s_version

  vpc_id = module.vpc.vpc_id
  subnets = module.vpc.private_subnets

  node_groups = {
    default = {
      desired_capacity = var.node_group_desired_capacity
      max_capacity     = var.node_group_desired_capacity + 1
      min_capacity     = 1
      instance_types   = [var.node_instance_type]
    }
  }

  manage_aws_auth = true
  cluster_endpoint_public_access = true
  cluster_endpoint_private_access = false

  tags = {
    Owner = "dev-team"
  }
}
