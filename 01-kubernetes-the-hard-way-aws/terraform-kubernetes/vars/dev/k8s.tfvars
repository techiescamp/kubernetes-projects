#VPC
region               = "us-east-2"
vpc_cidr_block       = "10.0.0.0/16"
instance_tenancy     = "default"
enable_dns_support   = true
enable_dns_hostnames = true

# Tags
owner       = "techiescamp"
environment = "dev"
cost_center = "techiescamp-commerce"
application = "k8s"

# Subnet
public_subnet_cidr_blocks = "10.0.1.0/24"

# Security Group
# CIDR Ingress Variables
ingress_rules = [
  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.0.0.0/16", "10.200.0.0/16"]
  },
  {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 6443
    to_port     = 6443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

# Route Table
destination_cidr_block  = "0.0.0.0/0"
pod_network_cidr_blocks = ["10.200.0.0/24", "10.200.1.0/24", "10.200.2.0/24"]

# Network Load Balancer
target_ips               = ["10.0.1.10", "10.0.1.11", "10.0.1.12"]
load_balancer_type       = "network"
target_group_port        = 6443
target_group_protocol    = "TCP"
target_group_target_type = "ip"

lb_listener_port                = 443
lb_listener_protocol            = "TCP"
lb_listener_default_action_type = "forward"

# Worker Instance
worker_instance_count        = 3
worker_image_id              = "ami-0e83be366243f524a"
worker_instance_type         = "t3.micro"
worker_key_name              = "ohio_key"
worker_associate_public_ip   = true
worker_private_ip_prefix     = "10.0.1.2"
worker_ebs_block_device_name = "/dev/sda1"
worker_ebs_block_volume_size = 50

# Controller Instance
controller_instance_count        = 3
controller_image_id              = "ami-0e83be366243f524a"
controller_instance_type         = "t3.micro"
controller_key_name              = "ohio_key"
controller_associate_public_ip   = true
controller_private_ip_prefix     = "10.0.1.1"
controller_ebs_block_volume_size = 50