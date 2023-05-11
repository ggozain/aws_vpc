output "vpc_id" {
  description = "The ID of the VPC created by the VPC module"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "The ID of the public subnets created by the VPC module"
  value       = module.vpc.public_subnets
}

output "private_subnet_id" {
  description = "The ID of the public subnets created by the VPC module"
  value       = module.vpc.private_subnets
}

output "intra_subnet_id" {
  description = "The ID of the public subnets created by the VPC module"
  value       = module.vpc.intra_subnets
}

output "vpc_owner_id" {
  description = "The ID of the public subnets created by the VPC module"
  value       = module.vpc.vpc_owner_id
}

output "nat_gateway_id" {
  description = "The NAT Gateway ID"
  value       = module.vpc.natgw_ids
}