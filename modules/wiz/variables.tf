###wiz eks connector variables

variable "wiz_image_path" {
  type    = string
  default = "wiziopublic.azurecr.io/wiz-app/wiz-broker:2.4"
}


variable "wiz_env" {
  type    = string
  default = ""
}

variable "wiz_namespace" {
  type    = string
  default = "wiz"
}

variable "wiz_connector_name" {
  type    = string
  default = "wiz-eks-ap-dev-poc-connector"
}

variable "wiz_server_endpoint" {
  type    = string
  default = "https://kubernetes.default.svc.cluster.local"
}

variable "wiz_connector_type" {
  type    = string
  default = "eks"
}

variable "wiz_is_private" {
  type    = bool
  default = true
}


variable "eks_cluster_name_prefix" {
  type        = string
  description = "Name prefix used across resources created by this module."
  default     = "wiz-eks-ap-dev-poc"
}


variable "wiz_url" {
  type    = string
  default = "https://api.us34.app.wiz.io/graphql"
}

variable "wiz_auth_client_id" {
  type = string
}

variable "wiz_auth_client_secret" {
  type      = string
  sensitive = true
}

variable "wiz_auth_audience" {
  type    = string
  default = "beyond-api"
}

variable "wiz_auth_url" {
  type    = string
  default = "https://auth.app.wiz.io/oauth/token"
}

variable "wiz_broker_client_id" {
  type    = string
  default = ""
}

variable "wiz_broker_client_secret" {
  type      = string
  sensitive = true
  default   = ""
}

#variables for wiz runtime sensor

variable "wiz_install_runtime_sensor" {
  type    = bool
  default = true
}


variable "wiz_runtime_sensor_helm_chart_name" {
  type        = string
  default     = "wiz-sensor"
  description = "Wiz runtime sensor helm chart name"
}


variable "wiz_runtime_sensor_helm_chart_release_name" {
  type        = string
  default     = "wiz-sensor"
  description = "Wiz runtime sensor helm chart release name"
}

variable "wiz_runtime_sensor_helm_chart_repo" {
  type        = string
  default     = "https://charts.wiz.io/"
  description = "Wiz runtime sensor helm chart repo"
}

variable "wiz_runtime_sensor_helm_chart_version" {
  type        = string
  default     = "1.0.3011"
  description = "Wiz runtime sensor helm chart version"
}


variable "wiz_registry_username" {
  type        = string
  default     = ""
  description = "Wiz registry username"
}

variable "wiz_registry_password" {
  type        = string
  default     = ""
  sensitive   = true
  description = "Wiz registry password"
}

variable "wiz_runtime_sensor_sa_secret_id" {
  type        = string
  default     = ""
  description = "Wiz runtime sensor service account secret id"
}

variable "wiz_runtime_sensor_sa_secret_key" {
  type        = string
  default     = ""
  sensitive   = true
  description = "Wiz runtime sensor service account secret key"
}



#variables for wiz admission controller

variable "wiz_install_k8_admission_controller" {
  type    = bool
  default = true
}


variable "wiz_k8_admission_controller_helm_chart_name" {
  type        = string
  default     = "wiz-admission-controller"
  description = "Wiz admission controller helm chart name"
}


variable "wiz_k8_admission_controller_helm_chart_release_name" {
  type        = string
  default     = "wiz-admission-controller"
  description = "Wiz admission controller helm chart release name"
}

variable "wiz_k8_admission_controller_helm_chart_repo" {
  type        = string
  default     = "https://charts.wiz.io/"
  description = "Wiz admission controller  helm chart repo"
}

variable "wiz_k8_admission_controller_helm_chart_version" {
  type        = string
  default     = "3.4.5"
  description = "Wiz admission controller helm chart version"
}

variable "wiz_k8_admission_controller_sa_name" {
  type        = string
  default     = "wiz-admission-controller-sa"
  description = "Wiz admission controller service account name"
}

variable "wiz_k8_admission_controller_sa_secret_id" {
  type        = string
  default     = ""
  description = "Wiz admission controller service account secret id"
}

variable "wiz_k8_admission_controller_sa_secret_key" {
  type        = string
  default     = ""
  sensitive   = true
  description = "Wiz admission controller service account secret key"
}
