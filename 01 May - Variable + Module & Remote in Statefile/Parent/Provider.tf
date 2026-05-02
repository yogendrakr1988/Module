terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.71.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "yogi-rg"
    storage_account_name = "yogistg9898"
    container_name = "yogi-ctr"
    key = "yogendra.tfstate"
    
  }
}

provider "azurerm" {
    features {}
}