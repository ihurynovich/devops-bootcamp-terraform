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

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "subnet_central_name" {
  description = "Name of the central subnet"
  type        = string
}

variable "subnet_central_cidr" {
  description = "CIDR block for the central subnet"
  type        = string
}

variable "subnet_central_region" {
  description = "Region for the central subnet"
  type        = string
}

variable "subnet_east_name" {
  description = "Name of the east subnet"
  type        = string
}

variable "subnet_east_cidr" {
  description = "CIDR block for the east subnet"
  type        = string
}

variable "subnet_east_region" {
  description = "Region for the east subnet"
  type        = string
}
