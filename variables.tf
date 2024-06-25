# Clusters
variable "clusters" {
  type = map(any)
  default = {
    weather-app = {
      location   = "us-east1-c"
      issue_cert = "false"
      zone       = "us-east1-c"
      deletion_protection = false
    }
  }
}

variable "node-pool" {
  type = map(any)
  default = {
    weather-app-node-pool = {
      location     = "us-east1-c"
      node_count   = 3
      labels       = "test"
      machine_type = "n1-standard-1"
      cluster      = "weather-app"
    }


  }
}
