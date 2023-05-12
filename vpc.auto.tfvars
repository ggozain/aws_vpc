
aws_region                = "eu-west-2"
tf_cloud_organization     = "gozain-lab"
tf_cloud_workspace        = "aws_ipam"
organisation              = "gozain-lab"
infra_env                 = "test"
project_name              = "EKS-Cluster-A"
expected_eks_cluster_name = "Cluster-A"
use_ipam_pool             = false
ipv4_netmask_length       = 16
enable_dns_support        = true
enable_dns_hostnames      = true
enable_nat_gateway        = false
single_nat_gateway        = false
one_nat_gateway_per_az    = false