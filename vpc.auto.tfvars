
aws_region                = "eu-west-2"
tf_cloud_organization     = "gozain-lab"
tf_cloud_workspace        = "aws_ipam"
azs                       = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
organisation              = "gozain-lab"
infra_env                 = "test"
project_name              = "EKS-Cluster-A"
expected_eks_cluster_name = "Cluster-A"
use_ipam_pool             = true
ipv4_netmask_length       = 16
enable_dns_support        = true
enable_dns_hostnames      = true
public_subnets            = ["10.0.16.0/20", "10.0.32.0/20", "10.0.48.0/20"]
private_subnets           = ["10.0.64.0/20", "10.0.80.0/20", "10.0.96.0/20"]