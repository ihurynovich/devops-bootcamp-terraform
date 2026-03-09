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
