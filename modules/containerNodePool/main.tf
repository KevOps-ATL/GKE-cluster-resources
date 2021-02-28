resource "google_container_node_pool" "primary_preemptible_nodes" {

  for_each = var.node-pool

  name       = each.key
  location   = each.value.location
  cluster    = lookup(var.clusters, each.value.cluster, "cluster not found")
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = each.value.machine_type

    /*# Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.default.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
*/
  }
}
