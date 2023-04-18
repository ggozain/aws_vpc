variable "aws_region" {
  type        = string
  description = "The AWS Region where to create VPC"
}

variable "azs" {
  type        = list(string)
  description = "List of availability zones to be deployed."
}

variable "vpc_cidr" {
  type        = string
  description = "Main CIDR Block for VPC"
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