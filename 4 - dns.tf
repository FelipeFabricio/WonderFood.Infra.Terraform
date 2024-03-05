resource "azurerm_private_dns_zone" "wonderfood-privatedns" {
  name                = var.private_dns_zone_name
  resource_group_name = azurerm_resource_group.wonderfood-rg.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "wonderfood-privatedns-link" {
  name                  = "wonderfood.com"
  private_dns_zone_name = azurerm_private_dns_zone.wonderfood-privatedns.name
  virtual_network_id    = azurerm_virtual_network.wonderfood-vnet.id
  resource_group_name   = azurerm_resource_group.wonderfood-rg.name
  depends_on           = [azurerm_private_dns_zone.wonderfood-privatedns]
}
