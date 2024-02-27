resource "azurerm_resource_group" "wonderfood-rg" {
  name     = "wonderfood-rg"
  location = var.location
}

resource "azurerm_virtual_network" "wonderfood-vnet" {
  name                = "wonderfood-vnet"
  location            = var.location
  resource_group_name = azurerm_resource_group.wonderfood-rg.name
  address_space       = ["10.25.0.0/16"]
}
