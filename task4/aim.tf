# Create the service account
resource "google_service_account" "sa" {
  account_id   = var.service_account
  display_name = "Service Account for GCS access"
  project      = var.project
}

# Assign roles/storage.objectCreator to the service account for the bucket
resource "google_storage_bucket_iam_member" "object_creator" {
  bucket = var.bucket_name
  role   = "roles/storage.objectCreator"
  member = "serviceAccount:${google_service_account.sa.email}"
}
