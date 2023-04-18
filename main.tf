data "tfe_outputs" "ipam" {
  organization = var.tf_cloud_organization
  workspace    = var.tf_cloud_workspace
}


module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  tags = {
    "Project"     = var.project_name
    "Environment" = var.infra_env
  }
  name                 = "${var.infra_env}-${var.aws_region}-vpc"
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  use_ipam_pool        = var.use_ipam_pool
  ipv4_ipam_pool_id    = data.tfe_outputs.ipam.ipam_id
  ipv4_netmask_length  = var.ipv4_netmask_length

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