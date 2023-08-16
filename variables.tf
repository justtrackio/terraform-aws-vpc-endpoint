variable "cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks to allow access to the vpc endpoint"
}

variable "ipv6_cidr_blocks" {
  type        = list(string)
  description = "IPv6 CIDR blocks to allow access to the vpc endpoint"
}

variable "subnet_ids" {
  type        = list(string)
  description = "IDs of the subnets that should have access to the vpc endpoint"
}

variable "vpc_endpoint_service_name" {
  type        = string
  description = "VPC Endpoint service name (e.g. `com.amazonaws.vpce.<region>.vpce-svc-<hash>`)"
}

variable "vpc_endpoint_service_type" {
  type        = string
  description = "VPC Endpoint service type (e.g. `Interface`)"
  default     = "Interface"
}

variable "vpc_id" {
  type        = string
  description = "ID of the VPC in which to create the vpc endpoint"
}
