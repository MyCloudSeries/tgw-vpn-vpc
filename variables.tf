variable "aws_cgws" {
  description = "Create Customer Gateways"
  default     = {
      "one_cgw"   = "1.1.1.1",
      "two_cgw"      = "2.2.2.2",
      "three_cgw"      = "3.3.3.3",
      "four_cgw" = "4.4.4.4"
  }
}

variable "vpcsubnet" {
  description = "VPC Subnet"
  
}

variable "vpc" {
  description = "VPC"
  
}
