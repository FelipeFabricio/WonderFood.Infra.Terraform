resource "azurerm_cosmosdb_account" "wonderfood-cosmos-account" {
  name                              = "wonderfood-cosmosdb"
  location                          = azurerm_resource_group.wonderfood-rg.location
  resource_group_name               = azurerm_resource_group.wonderfood-rg.name
  offer_type                        = "Standard"
  kind                              = "MongoDB"
  enable_free_tier                  = true
  is_virtual_network_filter_enabled = false
  enable_multiple_write_locations   = false
  enable_automatic_failover         = false
  public_network_access_enabled     = true

  consistency_policy {
    consistency_level = "Session"
  }


  capabilities {
    name = "EnableMongo"
  }


  geo_location {
    location          = azurerm_resource_group.wonderfood-rg.location
    failover_priority = 0
  }
}


resource "azurerm_cosmosdb_mongo_database" "wonderfood-mongo-db" {
  name                = "Wonderfood"
  resource_group_name = azurerm_resource_group.wonderfood-rg.name
  account_name        = azurerm_cosmosdb_account.wonderfood-cosmos-account.name
}
