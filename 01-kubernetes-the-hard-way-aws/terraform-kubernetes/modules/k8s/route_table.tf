resource "aws_route_table" "main_rtb" {
  vpc_id = aws_vpc.main_vpc.id

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-public-route-table",
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application
    },
    var.tags
  )
}

resource "aws_route" "main_route" {
  route_table_id         = aws_route_table.main_rtb.id
  destination_cidr_block = var.destination_cidr_block
  gateway_id             = aws_internet_gateway.main_igw.id
}

resource "aws_route" "pod_network_route" {
  count = length(var.pod_network_cidr_blocks)

  network_interface_id   = aws_instance.worker_instance[count.index].primary_network_interface_id
  destination_cidr_block = var.pod_network_cidr_blocks[count.index]
  route_table_id         = aws_route_table.main_rtb.id
}

resource "aws_route_table_association" "main_association" {
  subnet_id      = aws_subnet.main_subnet.id
  route_table_id = aws_route_table.main_rtb.id
}
