terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.8.0"
    }
  }
  required_version = ">=1.9.0"
}

provider "azurerm" {
  subscription_id = "a605e0b0-3112-4baf-8a25-ca8833f74433" # Bhavika-Sub
  features {

  }
}
