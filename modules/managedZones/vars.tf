variable "domains" {
  type = map(any)
  default = {
    blog = {
      name        = "kevops-atl"
      dns_name    = "kevops-atl.com."
      description = "kevops ghost blog"
      labels      = "blogs"
    }


  }
}
