output "dns_entry" {
  description = "list of dns entries to reach this vpc endpoint as exposed by the `aws_vpc_endpoint` resource"
  value       = aws_vpc_endpoint.endpoint.dns_entry
}
