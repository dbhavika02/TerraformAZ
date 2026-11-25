terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatesta7695"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
