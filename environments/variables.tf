variable "client_id" {
  description = "Azure Service Principal Client ID"
  type        = string
}

variable "client_secret" {
  description = "Azure Service Principal Client Secret"
  type        = string
  sensitive   = true
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "sample-rg-valut"
}

variable "location" {
  description = "Azure region for the resources"
  type        = string
  default     = "East US"
}

variable "app_name" {
  description = "The name of the web application"
  type        = string
}

variable "app_service_plan_sku" {
  description = "The SKU tier for the App Service Plan"
  type        = string
  default     = "Standard"
}

variable "app_service_plan_size" {
  description = "The size of the App Service Plan"
  type        = string
  default     = "S1"
}

variable "environment_name" {
  description = "The environment name to use as a postfix for resources."
  type        = string
}