terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.100.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "frontend-resource"
  #   storage_account_name = "frontend1111storage"
  #   container_name       = "frontend2222container"
  #   key                  = "frontend_storage.tfstate"
  # }
}
provider "azurerm" {
  features {}
}