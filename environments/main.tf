module "resource_group" {
  source              = "../modules/resource_group"
  resource_group_name = "${var.resource_group_name}-${var.environment_name}"
  location            = var.location
}

module "webapp" {
  source              = "../modules/webapp"
  resource_group_name = "${var.resource_group_name}-${var.environment_name}"
  location            = var.location
  app_name            = "${var.app_name}-${var.environment_name}"
  app_service_plan_sku    = var.app_service_plan_sku
  app_service_plan_size   = var.app_service_plan_size
  depends_on          = [module.resource_group]
}
