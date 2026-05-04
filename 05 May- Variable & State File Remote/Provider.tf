terraform {
   backend "azurerm" {
    resource_group_name  = "joni"
    storage_account_name = "jonistg090"
    container_name       = "jonicontainer"
    key                  = "yogendra.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
}
provider "azurerm" {
  features {}
}



