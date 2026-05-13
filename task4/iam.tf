# Create the service account
resource "google_service_account" "sa" {
  account_id   = var.service_account
  display_name = "Service Account for GCS access"
  project      = var.project
}

# Assign role on the project level
resource "google_project_iam_member" "project_usage" {
  project = var.project
  role    = "roles/storage.objectCreator"
  member  = "serviceAccount:${google_service_account.sa.email}"

  # It's a good practice to wait until SA is created
  depends_on = [google_service_account.sa]
}

# Assign roles/storage.objectCreator to the service account for the bucket
resource "google_storage_bucket_iam_member" "object_creator" {
  bucket = var.bucket_name
  role   = "roles/storage.objectCreator"
  member = "serviceAccount:${google_service_account.sa.email}"
}
