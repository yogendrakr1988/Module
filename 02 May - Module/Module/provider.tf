terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.71.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "hen-rg"
    storage_account_name = "henstg009"
    container_name = "henctr"
    key = "yogendra.tfstate"
    
  }
}

provider "azurerm" {
    features {}
}