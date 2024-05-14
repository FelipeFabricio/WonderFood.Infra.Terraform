terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.93.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "wonderfood-storage-rg"
    storage_account_name = "wonderfoodstorage"
    container_name       = "tf-deploy"
    key                  = "terraform.tfstate"
  }
}


provider "azurerm" {
  features {}
  use_oidc = true
}
