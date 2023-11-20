variable "region" {
  description = "The region where Alibaba Cloud resources will be deployed."
  default     = "me-east-1" // Saudi region
}

variable "alicloud_access_key" {
  description = "Access key for Alibaba Cloud."
  type        = string
}

variable "alicloud_secret_key" {
  description = "Secret key for Alibaba Cloud."
  type        = string
}

variable "environment" {
  description = "The name of the environment (e.g., sbox, prod)"
}

variable "team_name" {
  description = "The name of the team managing the resources"
  default     = "cp-berlin"
}

variable "container_namespace" {
  description = "The name of the org/team (e.g., card-processing)"
  default = "card-processing"
}
