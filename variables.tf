variable "aws_cgws" {
  description = "Create Customer Gateways"
  default     = {
      "abuja_cgw"   = "1.1.1.1",
      "ph_cgw"      = "2.2.2.2",
      "vi_cgw"      = "3.3.3.3",
      "anthony_cgw" = "4.4.4.4"
  }
}

variable "vpcsubnet" {
  description = "VPC Subnet"
  default     = ["subnet-06b60af59ada83699"]
}

variable "vpc" {
  description = "VPC"
  default     = "vpc-047150b8a082c4422"
}
