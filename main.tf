data "tfe_outputs" "ipam" {
  organization = var.tf_cloud_organization
  workspace    = var.tf_cloud_workspace
}

data "aws_availability_zones" "available" {}

data "aws_vpc_ipam_preview_next_cidr" "previewed_cidr" {
  ipam_pool_id   = data.tfe_outputs.ipam.values.ipam_child_pool_id
  netmask_length = var.ipv4_netmask_length
}

locals {

  partition       = cidrsubnets(data.aws_vpc_ipam_preview_next_cidr.previewed_cidr.cidr, 2, 2)
  private_subnets = cidrsubnets(local.partition[0], 2, 2, 2)
  public_subnets  = cidrsubnets(local.partition[1], 2, 2, 2)
  azs             = slice(data.aws_availability_zones.available.names, 0, 3)

}


module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  tags = {
    "Project"     = var.project_name
    "Environment" = var.infra_env
  }
  name                   = "${var.infra_env}-${var.aws_region}-vpc"
  enable_nat_gateway     = var.enable_nat_gateway
  single_nat_gateway     = var.single_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az
  enable_dns_support     = var.enable_dns_support
  enable_dns_hostnames   = var.enable_dns_hostnames
  use_ipam_pool          = var.use_ipam_pool
  ipv4_ipam_pool_id      = data.tfe_outputs.ipam.values.ipam_child_pool_id
  ipv4_netmask_length    = var.ipv4_netmask_length


  azs             = local.azs
  private_subnets = local.private_subnets
  public_subnets  = local.public_subnets
  private_subnet_tags = {
    "kubernetes.io/cluster/${var.expected_eks_cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"                        = 1
  }
  public_subnet_tags = {
    "kubernetes.io/cluster/${var.expected_eks_cluster_name}" = "shared"
    "kubernetes.io/role/elb"                                 = 1
  }
}