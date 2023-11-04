resource "aws_instance" "worker_instance" {
  count                       = var.worker_instance_count
  ami                         = var.worker_image_id
  instance_type               = var.worker_instance_type
  key_name                    = var.worker_key_name
  security_groups             = [aws_security_group.main_sg.id]
  associate_public_ip_address = var.worker_associate_public_ip
  subnet_id                   = aws_subnet.main_subnet.id
  private_ip                  = "${var.worker_private_ip_prefix}${count.index}"
  user_data                   = "name=worker-${count.index}|pod-cidr=10.200.${count.index}.0/24"

  ebs_block_device {
    device_name = var.worker_ebs_block_device_name
    volume_size = var.worker_ebs_block_volume_size
  }

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-worker-${count.index}",
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application
    },
    var.tags
  )
}
