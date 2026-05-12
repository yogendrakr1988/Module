terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.72.0"
    }
  }
backend "azurerm" {
     resource_group_name  = "faltu-rg"
     storage_account_name = "faltustg"  # <- use module output
     container_name       = "faltucntr"
     key                  = "yogendra.tfstate"
   }
}
provider "azurerm" {
    features {}
  }















