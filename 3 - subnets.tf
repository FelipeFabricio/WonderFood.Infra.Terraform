resource "azurerm_subnet" "wonderfood-mysql-subnet" {
  name                 = "wonderfood-mysql-subnet"
  resource_group_name  = azurerm_resource_group.wonderfood-rg.name
  virtual_network_name = azurerm_virtual_network.wonderfood-vnet.name
  address_prefixes     = ["10.25.1.0/24"]

  delegation {
    name = "Microsoft.DBforMySQL/flexibleServers"
    service_delegation {
      name = "Microsoft.DBforMySQL/flexibleServers"
    }
  }
}

resource "azurerm_subnet" "wonderfood-aks-subnet" {
  name                 = "wonderfood-aks-subnet"
  resource_group_name  = azurerm_resource_group.wonderfood-rg.name
  virtual_network_name = azurerm_virtual_network.wonderfood-vnet.name
  address_prefixes     = ["10.25.2.0/24"]
}