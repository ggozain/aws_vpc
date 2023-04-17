variable "aws_region" {
    type = string
    description = "The AWS Region where to create VPC"
}

variable "vpc_name" {
    type = string
    description = "The name of the VPC"
}

variable "vpc_azs" {
    type = list
    description = "List of availability zones to use for VPC creation"  
}

variable "vpc_cidr" {
    type = string
    description = "Main CIDR Block for VPC"
}

variable "private_subnets" {
    type = list
    description = "List of private subnets"
}

variable "public_subnets" {
    type = list
    description = "List of public subnets"
}