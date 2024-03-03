resource "azurerm_mysql_flexible_server" "wonderfood-mysql-server" {
  name                   = var.mysql_server_name
  resource_group_name    = azurerm_resource_group.wonderfood-rg.name
  location               = var.location
  administrator_login    = var.mysql_user
  administrator_password = var.mysql_password
  backup_retention_days  = 7
  delegated_subnet_id    = azurerm_subnet.wonderfood-mysql-subnet.id
  private_dns_zone_id    = azurerm_private_dns_zone.wonderfood-privatedns.id
  sku_name               = "GP_Standard_D2ds_v4"
  version                = "8.0.21"

  lifecycle {
    ignore_changes = [
      zone,
    ]
  }

  depends_on = [azurerm_private_dns_zone_virtual_network_link.wonderfood-privatedns-link]
}
