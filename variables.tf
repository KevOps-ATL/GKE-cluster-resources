# Clusters
variable "clusters" {
  type = map(any)
  default = {
    blog-cluster = {
      location   = "us-east1-c"
      issue_cert = "false"
      zone       = "us-east1-c"
    }
  }
}

variable "node-pool" {
  type = map(any)
  default = {
    backup-node-pool = {
      location     = "us-east1-c"
      node_count   = 3
      labels       = "poc"
      machine_type = "n1-standard-1"
      cluster      = "blog-cluster"
    }


  }
}

variable "domains" {
  type = map(any)
  default = {
    stone-mountain = {
      name        = "stonemountainmoto"
      dns_name    = "stonemountainmoto.com"
      description = "stonemtn blog"
      labels      = "blogs"
    }


  }
}
