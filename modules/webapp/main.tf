resource "azurerm_app_service_plan" "app_service_plan" {
  name                = "${var.app_name}-plan"
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    tier     = var.app_service_plan_tier
    size     = var.app_service_plan_size
    capacity = var.app_service_plan_capacity
  }
}

resource "azurerm_linux_web_app" "app_service" {
  name                = var.app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_app_service_plan.app_service_plan.id  # Corrected reference
  site_config {
    always_on           = true
    minimum_tls_version = "1.2"
    ftps_state          = "FtpsOnly"
    http2_enabled       = true
    use_32_bit_worker   = false
  }

  application_stack {
    node_version = "20-lts"  # Specify the Node.js version here
  }
   app_settings = {
      "WEBSITE_NODE_DEFAULT_VERSION" = "20"  # Adjust to your desired Node.js version
    }

}
