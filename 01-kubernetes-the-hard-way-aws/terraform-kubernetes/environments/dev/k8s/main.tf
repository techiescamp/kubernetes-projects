provider "aws" {
  region = "us-east-2"
}

module "k8s" {
  source = "../../../modules/k8s"

  region               = var.region            
  vpc_cidr_block       = var.vpc_cidr_block 
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  owner       = var.owner 
  environment = var.environment
  cost_center = var.cost_center
  application = var.application

  public_subnet_cidr_blocks = var.public_subnet_cidr_blocks

  ingress_rules = var.ingress_rules

  destination_cidr_block  = var.destination_cidr_block
  pod_network_cidr_blocks = var.pod_network_cidr_blocks

  target_ips               = var.target_ips 
  load_balancer_type       = var.load_balancer_type
  target_group_port        = var.target_group_port
  target_group_protocol    = var.target_group_protocol
  target_group_target_type = var.target_group_target_type

  lb_listener_port                = var.lb_listener_port  
  lb_listener_protocol            = var.lb_listener_protocol  
  lb_listener_default_action_type = var.lb_listener_default_action_type

  worker_instance_count        = var.worker_instance_count
  worker_image_id              = var.worker_image_id
  worker_instance_type         = var.worker_instance_type 
  worker_key_name              = var.worker_key_name 
  worker_associate_public_ip   = var.worker_associate_public_ip
  worker_private_ip_prefix     = var.worker_private_ip_prefix 
  worker_ebs_block_device_name = var.worker_ebs_block_device_name
  worker_ebs_block_volume_size = var.worker_ebs_block_volume_size

  controller_instance_count        = var.controller_instance_count
  controller_image_id              = var.controller_image_id  
  controller_instance_type         = var.controller_instance_type 
  controller_key_name              = var.controller_key_name
  controller_associate_public_ip   = var.controller_associate_public_ip
  controller_private_ip_prefix     = var.controller_private_ip_prefix
  controller_ebs_block_volume_size = var.controller_ebs_block_volume_size
}