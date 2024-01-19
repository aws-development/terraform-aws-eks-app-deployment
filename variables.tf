variable "eks_cluster_name_prefix" {
  type        = string
  description = "Name prefix used across resources created by this module."
  default     = "wiz-eks-ap-dev-poc"
}

variable "env" {
  type        = string
  description = "Environment used across resources created by this module."
  default     = "dev"
}

variable "AWS_ACCESS_KEY" {
  type = string
}
variable "AWS_SECRET_KEY" {
  type = string
}

variable "REGION" {
  type        = string
  description = "AWS region used across resources created by this module."
  default     = "ap-southeast-1"
}


variable "project" {
  type        = string
  description = "Name prefix used across resources created by this module."
  default     = "eks-poc"
}
