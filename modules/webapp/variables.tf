variable "app_name" {
  description = "The name of the web application"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "Location of the resource"
  type        = string
  default     = "East US"
}

variable "app_service_plan_sku" {
  description = "The SKU tier for the App Service Plan (e.g., Free, Shared, Basic, Standard)"
  type        = string
}

variable "app_service_plan_size" {
  description = "The size of the App Service Plan (e.g., F1, B1, S1)"
  type        = string
}

