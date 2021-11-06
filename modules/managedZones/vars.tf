variable "domains" {
  type = map(any)
  default = {
    blog = {
      name        = "kevops"
      dns_name    = "stonemountainmoto.com."
      description = "kevops blog"
      labels      = "blogs"
    }


  }
}
