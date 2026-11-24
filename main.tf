terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.8.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "a4a09634-099d-4f64-9420-f0c1f7c2d81e"
  features {

  }
}

variable "location" {
  type    = string
  default = "North Europe"
}

# resource "azurerm_resource_group" "tech-rg" {
#   name     = "tech-rg"
#   location = var.location
# }

# resource "azurerm_storage_account" "tech-sta" {
#   name                     = "techsta20261123" # must be globally unique: 3-24 lowercase letters/digits
#   resource_group_name      = azurerm_resource_group.tech-rg.name
#   location                 = azurerm_resource_group.tech-rg.location #implicit dependencies
#   account_tier             = "Standard"
#   account_replication_type = "LRS"

#   tags = {
#     environment = "staging"
#   }
# }
