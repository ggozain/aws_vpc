variable "aws_region" {
  type        = string
  description = "The AWS Region where to create VPC"
}

variable "tf_cloud_organization" {
  type        = string
  description = "The organisation of Terraform Cloud where remote state is stored"
}

variable "tf_cloud_workspace" {
  type        = string
  description = "The workspace of Terraform Cloud where remote state is stored"
}

variable "azs" {
  type        = list(string)
  description = "List of availability zones to be deployed."
}

variable "use_ipam_pool" {
  description = "Determines whether IPAM pool is used for CIDR allocation"
  type        = bool
  default     = false
}

variable "ipv4_ipam_pool_id" {
  description = "(Optional) The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR"
  type        = string
  default     = null
}

variable "ipv4_netmask_length" {
  description = "(Optional) The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a ipv4_ipam_pool_id"
  type        = number
  default     = null
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "private_subnets" {
  type        = list(any)
  description = "List of private subnets"
}

variable "public_subnets" {
  type        = list(any)
  description = "List of public subnets"
}

variable "organisation" {
  type        = string
  description = "The main organisation name. Used for tagging"
}

variable "infra_env" {
  type        = string
  description = "The infrastructre environment. (i.e. test/qa/prod) used for tagging"
}

variable "project_name" {
  type        = string
  description = "The project/application name related to the infra"
}

variable "expected_eks_cluster_name" {
  description = "The cluster name that will be applied when aws_eks is created. For use in tagging subnets"
  type        = string
}