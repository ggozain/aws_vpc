
aws_region                = "eu-west-2"
azs                       = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
tf_cloud_organization     = "gozain-lab"
tf_cloud_workspace        = "aws_ipam"
organisation              = "gozain-lab"
infra_env                 = "test"
project_name              = "EKS-Cluster-A"
expected_eks_cluster_name = "Cluster-A"
use_ipam_pool             = true
ipv4_netmask_length       = 20
enable_dns_support        = true
enable_dns_hostnames      = true
# public_subnets            = ["192.168.16.0/20", "192.168.32.0/20", "192.168.48.0/20"]
# private_subnets           = ["192.168.64.0/20", "192.168.80.0/20", "192.168.96.0/20"]