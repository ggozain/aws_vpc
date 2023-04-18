
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  tags = {
    "Project"     = var.project_name
    "Environment" = var.infra_env
  }
  name = "${var.infra_env}-${var.aws_region}-vpc"
  cidr = var.vpc_cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  private_subnet_tags = {
    "kubernetes.io/cluster/${var.expected_eks_cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"                        = 1
  }
  public_subnets = var.public_subnets
  public_subnet_tags = {
    "kubernetes.io/cluster/${var.expected_eks_cluster_name}" = "shared"
    "kubernetes.io/role/elb"                                 = 1
  }
}