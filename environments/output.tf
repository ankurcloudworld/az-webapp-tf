output "webapp_hostname" {
  value = module.webapp.app_service_default_site_hostname
  description = "The default hostname of the web app"
}
