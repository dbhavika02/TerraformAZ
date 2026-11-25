terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.8.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatesta29068"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
  required_version = ">=1.9.0"
}



provider "azurerm" {
  subscription_id = "a605e0b0-3112-4baf-8a25-ca8833f74433" # Bhavika-Sub
  features {

  }
}

variable "location" {
  type    = string
  default = "North Europe"
}

variable "environment" {
  type        = string
  description = "The env type"
  default     = "staging"
}

locals {
  common_tags = {
    environment = "dev"
    lob         = "banking"
    stage       = "alpha"
  }
}

resource "azurerm_resource_group" "tech-rg" {
  name     = "tech-rg"
  location = var.location
}

resource "azurerm_storage_account" "tech-sta" {
  name                     = "techsta20261123" # must be globally unique: 3-24 lowercase letters/digits
  resource_group_name      = azurerm_resource_group.tech-rg.name
  location                 = azurerm_resource_group.tech-rg.location #implicit dependencies
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = local.common_tags.stage
  }
}


output "storage_account_name" {
  value = azurerm_storage_account.tech-sta.name
}
