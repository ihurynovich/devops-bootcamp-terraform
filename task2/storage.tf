resource "google_storage_bucket" "storage_bucket" {
  name                        = var.bucket_name
  location                    = var.bucket_location
  uniform_bucket_level_access = true

  labels = local.common_labels
}
