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

variable "app_service_plan_tier" {
  description = "The pricing tier for the App Service Plan."
  type        = string
  default     = "Standard"
}

variable "app_service_plan_size" {
  description = "The size of the App Service Plan."
  type        = string
  default     = "S1"
}

variable "app_service_plan_capacity" {
  description = "The capacity of the App Service Plan."
  type        = number
  default     = 1
}
