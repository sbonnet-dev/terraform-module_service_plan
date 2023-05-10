resource "azurerm_service_plan" "service_plan" {
  location            = var.location
  name                = var.name
  os_type             = "Linux"
  resource_group_name = var.resource_group_name
  sku_name            = "B1"
  
  tags = {
    azd-env-name = "sboai-env2"
  }
}