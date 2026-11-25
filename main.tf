resource "azurerm_resource_group" "example" {
  name     = "${var.name}-resources"
  location = var.allowed_locations[1]
}

resource "azurerm_storage_account" "example" {
  for_each = var.storage_account_name
  name     = each.value
  # count = length(var.storage_account_name)
  # name = var.storage_account_name[count.index]
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
