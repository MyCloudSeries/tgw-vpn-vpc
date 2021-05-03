variable "aws_cgws" {
  description = "Create Customer Gateways"
  type        = list(string)
  default     = ["abuja_cgw", "ph_cgw", "vi_cgw","anthony_cgw"]
}

variable "aws_cgwsip" {
  description = "Create Customer Gateways"
  type        = list(string)
  default     = ["abuja_cgw", "ph_cgw", "vi_cgw","anthony_cgw"]
}

variable "abuja_cgwip" {
    description  = "Abuja PeerIP/CustomerGateway"
    type         = string
}

variable "ph_cgwip" {
    description  = "PortHarcourt PeerIP/CustomerGateway"
    type         = string
}

variable "vi_cgwip" {
    description  = "VictoriaIsland PeerIP/CustomerGateway"
    type         = string
}

variable "anthony_cgwip" {
    description  = "Anthony PeerIP/CustomerGateway"
    type         = string
}

variable "abuja_staticroute" {
    description  = "Abuja StaticRoute/Encryption Domain"
    type         = string
}

variable "ph_staticroute" {
    description  = "PortHarcourt StaticRoute/Encryption Domain"
    type         = string
}

variable "vi_staticroute" {
    description  = "VictoriaIsland StaticRoute/Encryption Domain"
    type         = string
}

variable "anthony_staticroute" {
    description  = "Anthony StaticRoute/Encryption Domain"
    type         = string
}