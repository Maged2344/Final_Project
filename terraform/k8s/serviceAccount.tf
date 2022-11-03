# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account
resource "google_service_account" "k8s-staging" {
  project    = "maged-project"
  account_id = "k8s-staging"
}
