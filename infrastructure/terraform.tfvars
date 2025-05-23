vpc_cidr_block          = "10.0.0.0/16"
availability_zones      = ["us-east-1a", "us-east-1b"]
public_subnet_cidrs     = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs    = ["10.0.3.0/24", "10.0.4.0/24"]
alb_name                = "ecs-alb"
target_group_name       = "ecs-target-group"
cluster_name            = "my-ecs-cluster"
instance_type           = "t3.micro"
key_name                = "uma-keypair"
capacity_provider_name  = "my-capacity-provider"
db_username             = "admin"
db_password             = "UmaSk_2326"
