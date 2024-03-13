terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.93.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "wdf-service-principal"
    storage_account_name = "wonderfoodstorage"
    container_name       = "tf-deploy"
    key                  = var.azure_blob_storage_key
  }
}

provider "azurerm" {
  features {}
}
