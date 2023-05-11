resource "azurerm_service_plan" "service_plan" {
  name = lower(format("sp-%s-%s-%s", var.project, var.environment, var.name))

  location            = var.location
  os_type             = "Linux"
  resource_group_name = var.rg_name
  sku_name            = "B1"

  tags = {
    project     = var.project
    environment = var.environment
    owner       = var.owner
  }

}