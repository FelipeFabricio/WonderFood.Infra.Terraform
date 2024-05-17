resource "azurerm_api_management" "wonderfood-apim" {
  name                = "wonderfood-apim"
  location            = azurerm_resource_group.wonderfood-rg.location
  resource_group_name = azurerm_resource_group.wonderfood-rg.name
  publisher_name      = "Wonderfood"
publisher_email     = "felipefmo@outlook.com"


  sku_name = "Developer_1"
}
