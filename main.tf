resource "aws_customer_gateway" "maincgw" {
  for_each   = var.aws_cgws
  bgp_asn    = 65000
  ip_address = each.value
  type       = "ipsec.1"

  tags = {
    Name = each.key
  }
}

resource "aws_ec2_transit_gateway" "maintgw" {
  description = "Gateway to All VPCs and VPNs"
  tags        = {
    Name      = "MainTGW"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "vpcattach" {
  subnet_ids         = var.vpcsubnet
  transit_gateway_id = aws_ec2_transit_gateway.maintgw.id
  vpc_id             = var.vpc
  tags = {
    Name = "VPC-TGW"
  }
}

resource "aws_vpn_connection" "main" {
  for_each            = var.aws_cgws
  customer_gateway_id = aws_customer_gateway.maincgw[each.key].id
  transit_gateway_id  = aws_ec2_transit_gateway.maintgw.id
  type                = aws_customer_gateway.maincgw[each.key].type
  tags                = {
    Name              = "${each.key}vpn"
  }
}


#resource "aws_customer_gateway" "main" {
#  bgp_asn    = 65000
#  ip_address = "172.83.124.10"
#  type       = "ipsec.1"

#  tags = {
#    Name = var.aws_cgws[count.index]
#  }
#}
