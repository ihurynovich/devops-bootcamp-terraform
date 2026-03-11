variable "project" {
  description = "Project name"
  type        = string
}

variable "owner" {
  description = "Owner of the resources"
  type        = string
}

variable "terraform" {
  description = "Terraform label"
  type        = string
  default     = "true"
}

variable "bucket_name" {
  type        = string
  description = "The name of the GCP storage bucket"
}

variable "bucket_location" {
  type        = string
  description = "The region where the GCP storage bucket will be created"
}
