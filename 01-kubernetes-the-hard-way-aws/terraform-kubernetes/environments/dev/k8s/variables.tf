variable "region" {
  type        = string
  description = "The AWS region where resources will be created."
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Custom tags to be applied to resources."
}

variable "owner" {
  type        = string
  description = "Name of the resource owner."
}

variable "environment" {
  type        = string
  description = "The environment in which resources are deployed (e.g., 'dev', 'prod')."
}

variable "cost_center" {
  type        = string
  description = "The cost center associated with the resources."
}

variable "application" {
  type        = string
  description = "The name of the application or project."
}

variable "vpc_cidr_block" {
    type        = string
    description = "The CIDR block for the VPC."
}

variable "instance_tenancy" {
    type        = string
    description = "The tenancy of instances (default or dedicated)."
}

variable "enable_dns_support" {
    type        = bool
    description = "Enable or disable DNS support for the VPC."
}

variable "enable_dns_hostnames" {
    type        = bool
    description = "Enable or disable DNS hostnames for the VPC."
}

variable "public_subnet_cidr_blocks" {
    type        = string
    description = "CIDR blocks for public subnets."
}

variable "ingress_rules" {
  type        = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "List of ingress rules"
}

variable "destination_cidr_block" {
    type        = string
    description = "The destination CIDR block for a route."
}

variable "pod_network_cidr_blocks" {
    type        = list(string)
    description = "List of CIDR blocks for pod networks."
}

variable "target_ips" {
    type        = list(string)
    description = "List of target IP addresses for load balancer."
}

variable "load_balancer_type" {
    type        = string
    description = "The type of load balancer (e.g., 'network' or 'application')."
}

variable "target_group_port" {
    type        = number
    description = "The port for the target group."
}

variable "target_group_protocol" {
    type        = string
    description = "The protocol for the target group (e.g., 'HTTP' or 'TCP')."
}

variable "target_group_target_type" {
    type        = string
    description = "The type of target for the target group (e.g., 'ip' or 'instance')."
}

variable "lb_listener_port" {
    type        = number
    description = "The port for the load balancer listener."
}

variable "lb_listener_protocol" {
    type        = string
    description = "The protocol for the load balancer listener (e.g., 'HTTP' or 'TCP')."
}

variable "lb_listener_default_action_type" {
    type        = string
    description = "The default action type for the load balancer listener."
}

variable "worker_instance_count" {
    type        = number
    description = "The number of worker instances to create."
}

variable "worker_image_id" {
    type        = string
    description = "AMI ID for worker instances."
}

variable "worker_instance_type" {
    type        = string
    description = "Instance type for worker instances."
}

variable "worker_key_name" {
    type        = string
    description = "Key pair name for SSH access to worker instances."
}

variable "worker_associate_public_ip" {
    type        = bool
    description = "Whether to associate a public IP address with worker instances."
}

variable "worker_private_ip_prefix" {
    type        = string
    description = "Prefix for private IP addresses of worker instances."
}

variable "worker_ebs_block_device_name" {
    type        = string
    description = "Name of the EBS block device for worker instances."
}

variable "worker_ebs_block_volume_size" {
    type        = number
    description = "Size of the EBS volume for worker instances."
}

variable "controller_instance_count" {
    type        = number
    description = "The number of controller instances to create."
}

variable "controller_image_id" {
    type        = string
    description = "AMI ID for controller instances."
}

variable "controller_instance_type" {
    type        = string
    description = "Instance type for controller instances."
}

variable "controller_key_name" {
    type        = string
    description = "Key pair name for SSH access to controller instances."
}

variable "controller_associate_public_ip" {
    type        = bool
    description = "Whether to associate a public IP address with controller instances."
}

variable "controller_private_ip_prefix" {
    type        = string
    description = "Prefix for private IP addresses of controller instances."
}

variable "controller_ebs_block_volume_size" {
    type        = number
    description = "Size of the EBS volume for controller instances."
}

