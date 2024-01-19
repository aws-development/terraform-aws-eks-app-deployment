
##alb controller helm chart variables  ###

variable "eks_cluster_name_prefix" {
  type        = string
  description = "Name prefix used across resources created by this module."
  default     = "wiz-eks-ap-dev-poc"
}

variable "alb_controller_iam_role_name" {
  type        = string
  default     = ""
  description = "alb_controller_iam_role_name"
}

variable "alb_controller_enabled" {
  type        = bool
  default     = true
  description = "Variable indicating whether deployment is enabled."
}


variable "alb_controller_service_account_name" {
  type        = string
  default     = "aws-load-balancer-controller"
  description = "ALB Controller service account name"
}

variable "alb_controller_helm_chart_name" {
  type        = string
  default     = "aws-load-balancer-controller"
  description = "ALB Controller Helm chart name to be installed"
}

variable "alb_controller_helm_chart_release_name" {
  type        = string
  default     = "aws-load-balancer-controller"
  description = "Helm release name"
}

variable "alb_controller_helm_chart_version" {
  type        = string
  default     = "1.6.1"
  description = "ALB Controller Helm chart version."
}

variable "alb_controller_helm_chart_repo" {
  type        = string
  default     = "https://aws.github.io/eks-charts"
  description = "ALB Controller repository name."
}

variable "alb_controller_namespace" {
  type        = string
  default     = "kube-system"
  description = "Kubernetes namespace to deploy ALB Controller Helm chart."
}

variable "alb_controller_mod_dependency" {
  default     = null
  description = "Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable."
}

variable "alb_controller_settings" {
  default     = {}
  description = "Additional settings which will be passed to the Helm chart values."
}


variable "REGION" {
  type        = string
  description = "AWS region used across resources created by this module."
  default     = "ap-southeast-1"
}
