resource "azurerm_kubernetes_cluster" "wonderdoof-cluster" {
  name                = "wonderfood-cluster"
  location            = var.location
  resource_group_name = azurerm_resource_group.wonderfood-rg.name
  dns_prefix          = "wonderfood-cluster"

  default_node_pool {
    name                = "default"
    vm_size             = "Standard_B2s"
    zones               = [2]
    vnet_subnet_id      = azurerm_subnet.wonderfood-aks-subnet.id
    enable_auto_scaling = true
    node_count          = 1
    min_count           = 1
    max_count           = 3
  }

  identity {
    type = "SystemAssigned"
  }

  lifecycle {
    ignore_changes = [
      default_node_pool[0].node_count
    ]
  }
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.wonderdoof-cluster.kube_config_raw

  sensitive = true
}