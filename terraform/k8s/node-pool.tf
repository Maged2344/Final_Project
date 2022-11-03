resource "google_container_node_pool" "general" {
  name       = "general"
  location   = "us-central1-a"
  cluster    = google_container_cluster.gke.name
  project    = "maged-project"
  node_count = 3

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  node_config {
    labels = {
      role = "general"
    }
    machine_type = "e2-medium"

    service_account = google_service_account.k8s-staging.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
