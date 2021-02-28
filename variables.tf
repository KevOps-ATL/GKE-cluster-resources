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
      node_count   = 1
      labels       = "poc"
      machine_type = "n1-standard-1"
      cluster      = "blog-cluster"
    }


  }
}

variable "domains" {
  type = map(any)
  default = {
    kevops-atl = {
      name        = "kevops-atl"
      dns_name    = "kevops-atl.com"
      description = "kevops ghost blog"
      labels      = "blogs"
    }


  }
}
