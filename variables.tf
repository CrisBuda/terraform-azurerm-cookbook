variable "resource_groupe_name" {
  description = "Resource groupe name"
  default = "RG_MyAPP_DemoTFCLOUD"
}

variable "location" {
  description = "Location of Azure resource"
  default     = "West Europe"
}

variable "service_plan_name" {
  description = "Service plan name"
  default = "demoappsp"
}

variable "app_name" {
  description = "Name of application"
  default = "myappdemobookcloudpreact"
}

variable "sp_sku"{
  description = "Service plan sku"
  default = "Standard"
}

variable "ftps_state" {
  default = "AllAllowed"
}