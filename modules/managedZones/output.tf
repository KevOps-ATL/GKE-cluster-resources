output "name_servers" {
  value = {
    for ns in google_dns_managed_zone.default :
    ns.name => ns.name_servers
  }
  description = "DNS name servers"
}

# Instance External IP address
output "name" {
  value = { for r in google_dns_managed_zone.default : r.name => r.name }
}
