variable "node-pool" {
  type = map(any)
  default = {
    backup-node-pool = {
      location     = "us-central1"
      cluster      = "atldevops"
      machine_type = "n1-standard-1"
      node_count   = 1
      labels       = "poc"
    }


  }
}

variable "clusters" {
  type        = map(any)
  default     = { "clustername" = "clusterid" }
  description = "kube clusters we connect to"
}
